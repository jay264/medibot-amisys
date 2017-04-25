Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-30_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-30_URGEMERG
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
	And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
	And the test pauses for "2" seconds
	And in the "Certification" page I use the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Hospital Svcs"
	And the test pauses for "3" seconds
	And in the "hospital_services" page I should see the "est_admit" image
	And the test pauses for "3" seconds
	#And in the "hospital_services" page I enter "<care_date>" into the "est_admit" image
	And in the "hospital_services" page I enter the first element from "<care_date>" into the "est_admit" image
	And in the "hospital_services" page I subtract one from the "<auth_approval_days>" days and put the result in the "auth_days" image
	And in the "hospital_services" page I enter "$" into the "facility_number" image
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
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "5" seconds
	#And in the "provider_affiliation_list" page I enter "HM" into the "pg_search_cell" image
	And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "<facility_name>" into the "facility_name_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "2" seconds
	And in the "provider_affiliation_list" page I enter "H" into the "cp_search_cell" image
	And I press ENTER graphically
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And I determine whether something is PAR or NONPAR
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds

	And in the "hospital_services" page I enter "$" into the "ref_prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I enter "<requesting_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "5" seconds
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
	And the test pauses for "2" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I copy the provider number to the clipboard and save the variable
	And the test pauses for "3" seconds
	And in the "hospital_services" page I click on the "save" image
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "5" seconds

	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And in the "authorized_services" page I should see the "amounts_and_dates" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I convert "<care_date>" into the "dates_begin_requested" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I add the "<auth_approval_days>" to the "<care_date>" and put the result in the "dates_end_requested" image and subtract one
	And the test pauses for "2" seconds
	And in the "authorized_services" page I add the "<auth_approval_days>" to the "<care_date>" and put the result in the "dates_end_approved" image and subtract one
	And the test pauses for "2" seconds
	#And in the "authorized_services" page I enter "<care_date>" into the "dates_begin_approved" image
	And in the "authorized_services" page I enter the first element from "<care_date>" into the "dates_begin_approved" image
	And the test pauses for "2" seconds
	#And in the "authorized_services" page I enter "<auth_approval_days>" into the "how_many_requested" image
	And in the "authorized_services" page I enter the first element from "<auth_approval_days>" into the "how_many_requested" image
	And the test pauses for "2" seconds
	#And in the "authorized_services" page I enter "<auth_approval_days>" into the "how_many_authorized" image
	And in the "authorized_services" page I enter the first element from "<auth_approval_days>" into the "how_many_authorized" image
	And the test pauses for "3" seconds
	And I use the sub class "<sub_class>" to determine what location to enter into the location image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "AD" into the "count" image

	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds

	And I press "F8"
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "3" seconds

	And I input the notes if any are contained in "<notes>"
	And the test pauses for "5" seconds

	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
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

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

	Examples:
		| requested_date  | military_date      | other_reference_# |	member_id | member_first_name |	member_last_name | practice_name | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name  | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	| servicing_provider_npi_# |	sub_class  | sub_class_code | type  |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm | auth_for_payment | days_used_prior | dc | denc_date | mds_date | nomnc_date | total_days | total_skilled_days | auth_type      | auth_status    |	auth_number |	diagnosis_code     |	diagnosis                                          			|	diagnosis_type |	auth_modified_date | service_code       | service_description                                                    | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                  | care_date | actual_level_of_care | approved_level_of_care | determination | auth_approval_days |
| 02272017 | 2017-02-27T10:06:44+00:00 |  | 000109709-01 | Bonna | Dennis | HMP OF OHIO PC | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03302017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02242017 | 03012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170301060 | E871, R4182 | Altered mental status, unspecified | ICD10 | 03302017 |  |  |  | 0 | 0 |  | 0 |  |  | Presented from SNF with AMS and hyponatremia. NA 113. Rising WBC up to 21.4.  UA negative. No fever. Added ATB to tx plan. IVF increasing NA to 124. O2 sats 88-90 on 4L.  Swallow study for dysphagia. Study did not indicate risk of aspiration. Recommend continue reg diet., Submitted this 6 day readmission to the Medical Director for determination., The Medical Director determined Inpatient. | 02242017, 02252017, 02262017, 02272017, 02282017, 03012017, 03022017 | Observation, Observation, Observation, Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation, Observation, Observation, Observation | Approved, Approved, Approved, Approved, Approved, Approved,  | 6, 6, 6, 6, 6, 6, 6 |
| 03142017 | 2017-03-14T09:32:40+00:00 |  | 000063656-01 | MICHAEL | ALLEN | OSU SURGERY LLC | 946941 | DESMOND M | DSOUZA | 1841472842 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 03302017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03222017 | 03232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170314006 | I2510, R911 | Solitary pulmonary nodule | ICD10 | 03302017 | 32666, 31622 | BRONCHOSCOPY-DIAG-W-W/O CELL WS/BRS | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  | 03212017, 03222017, 03232017 | Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient | , Approved,  | 2, 2, 2 |
| 03202017 | 2017-03-20T13:29:16+00:00 | 252764947078 | 000006862-01 | DORIS | FAHRENBACH | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03302017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 03192017 | 03292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170320056 | R69 | Illness, unspecified | ICD10 | 03302017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03192017, 03202017, 03212017, 03222017, 03232017, 03242017, 03252017, 03262017, 03272017, 03282017, 03292017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11 |
| 03202017 | 2017-03-20T10:32:55+00:00 |  | 000073439-01 | Charla | Benson | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03302017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03172017 | 03272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170323043 | I4891 | Unspecified atrial fibrillation | ICD10 | 03302017 |  |  |  | 0 | 0 |  | 0 |  |  | 71 year old presented to the ED with  rapid heart beat  dx ith new onset of afib  mbr  started on Cardizem  Drip. having SOB that is getting progressively worse Pulm consult. Mbr started on IV atb's | 03172017, 03182017, 03192017, 03202017, 03212017, 03222017, 03232017, 03242017, 03252017, 03262017, 03272017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11 |
| 03212017 | 2017-03-21T12:32:59+00:00 |  | 000107821-01 | Donna | St Clair | NEPHROLOGY CNSLT SE OH | 921901 | DAVID M | DEMBSKI | 1972586139 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 03302017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 03202017 | 03292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170323094 | D631, G4733, L03113, N186, T814XXA | Infection following a procedure, initial encounter | ICD10 | 03302017 |  |  |  | 0 | 0 |  | 0 |  |  | Inpatient for cellulitis/abscess of AV graft removal & artery repair site.  (Hemodialysis 3x/week).  To OR for I&D abscess  packing  attempted wound vac however too much bleeding.  , To date  7-day LOS | 03202017, 03212017, 03222017, 03232017, 03242017, 03252017, 03262017, 03272017, 03282017, 03292017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 10, 10, 10, 10, 10, 10, 10, 10, 10, 10 |
| 03222017 | 2017-03-22T08:29:49+00:00 |  | 000089285-01 | Sharon | Nusser | FAIRFIELD INTERNAL MED | 937245 | CHRISTOPHER S | NICKISON | 1962481465 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03302017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03212017 | 03282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170324028 | K8590 | ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION, UNSP | ICD10 | 03302017 |  |  |  | 0 | 0 |  | 0 |  |  | Presented w abd pain. Dx of Acute Pancreatitis. LOS  7 days. | 03212017, 03222017, 03232017, 03242017, 03252017, 03262017, 03272017, 03282017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 8, 8, 8, 8, 8, 8, 8, 8 |
| 03242017 | 2017-03-24T11:06:40+00:00 | 250595167083 | 000049420-01 | EVA | JARRELL | MOUNT CARMEL HLTH SYS | 947112 | CHARLES H | DABBS | 1992020598 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03302017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 03232017 | 03292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170324047 | K449 | Diaphragmatic hernia without obstruction or gangrene | ICD10 | 03302017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03232017, 03242017, 03252017, 03262017, 03272017, 03282017, 03292017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved,  | 7, 7, 7, 7, 7, 7, 7 |
| 03222017 | 2017-03-22T14:28:34+00:00 |  | 000115814-01 | Walter | Dewar Jr | MERCY HEALTH PHYSICIANS | 921377 | RICHARD G | KLOPP | 1396790432 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 03302017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 03212017 | 03292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170324068 | E8719, R05, R0602, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 03302017 |  |  |  | 0 | 0 |  | 0 |  |  | PC from UR-Member remains in house as of 03/29/17 for repeat syncopal episode  vomiting  aspiration and bronchospasm.  Requested additional clinical., R/fax about overturn of Obs status., Additional clinical review rec'd  rapid response for syncopal episode  SVT  SIADH.  Changed status to INPT  dc'd on 03/29/2017. | 03212017, 03222017, 03232017, 03242017, 03252017, 03262017, 03272017, 03282017, 03292017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 9, 9, 9, 9, 9, 9, 9, 9, 9 |
| 03232017 | 2017-03-23T10:37:21+00:00 |  | 000105594-01 | William | Sinkula | TRIHEALTH H LLC | 933516 | CHRISTOPHER E | HAYNER | 1164466371 | THE GOOD SAMARITAN HOSPITAL OF CINCI | 939649 | 1396714085 | THE GOOD SAMARITAN HOSPITAL OF CINCI | 1396714085 | Inpatient | IP | Concurrent Review | CONC |  | THE GOOD SAMARITAN HOSPITAL OF CINCI | 03302017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 03222017 | 03272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170324118 | T424X2A | Poisoning by benzodiazepines, intentional self-harm, init | ICD10 | 03302017 |  |  |  | 0 | 0 |  | 0 |  |  | Presented after a suicide attempt. | 03222017, 03232017, 03242017, 03252017, 03262017, 03272017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved,  | 6, 6, 6, 6, 6, 6 |
