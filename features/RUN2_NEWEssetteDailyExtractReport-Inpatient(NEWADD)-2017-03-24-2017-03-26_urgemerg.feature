Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-24-2017-03-26_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-24-2017-03-26_URGEMERG
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
| 02132017 | 2017-02-13T10:01:45+00:00 |  | 000079210-01 | Barbara | Kuhns | MED STAFF SERVICES LLC | 907313 | CHARLES N | ONWE | 1831124460 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 03242017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 02102017 | 02162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170213062 | J111 | Flu due to unidentified influenza virus w oth resp manifest | ICD10 | 03242017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved,  | 7, 7, 7, 7, 7, 7, 7 |
| 02162017 | 2017-02-16T08:03:57+00:00 |  | 000073187-01 | Georgianna | Willis | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 03242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02152017 | 02222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170216072 | J189 | Pneumonia, unspecified organism | ICD10 | 03242017 |  |  |  | 0 | 0 |  | 0 |  |  | Mbr transferred to MCSA emergently on 2/22/2017, Received additional clinical documentation on 02/16/2017 the mbr was transferred to ICU for respiratory difficulties  the mbr was started on BIPAP PICC line placed 91/61 111 36 97.3 90% BIPAP k+ 2.8 K+ rider  ordered IV ATB's started CXR shows Multifocal Pneumonia  Cardiomegally. | 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 8, 8, 8, 8, 8, 8, 8, 8 |
| 03132017 | 2017-03-13T11:56:10+00:00 | 250566007070 | 000047569-01 | BEVERLY | JUSTICE | MOUNT CARMEL HLTH SYS | 947112 | CHARLES H | DABBS | 1992020598 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03242017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 03122017 | 03232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170313050 | K631 | Perforation of intestine (nontraumatic) | ICD10 | 03242017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03122017, 03132017, 03142017, 03152017, 03162017, 03172017, 03182017, 03192017, 03202017, 03212017, 03222017, 03232017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 |
| 03222017 | 2017-03-22T11:29:17+00:00 |  | 000065746-01 | BETTY | STINE | LICKING MEM INPATIENT ME | 901182 | DAVID W | KOONTZ | 1730193137 | LICKING MEMORIAL HOSPITAL REHAB | 923738 | 1912258898 | LICKING MEMORIAL HOSPITAL REHAB | 1912258898 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL REHAB | 03242017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 03242017 | 03252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Pre-Service | Denied | A170322086 | S42001A, S72141A | Displaced intertrochanteric fracture of right femur, init | ICD10 | 03242017 |  |  |  | 0 | 0 |  | 0 |  |  | Request for IPRH referred to Medical Director for further determination., Medical Director denied the request for Inpatient Acute Rehab.  Denial Letter was routed to the Letter Review queue., Placed call to Amie Myers at LMH Rehab Unit and informed her the request for Inpatient Acute Rehab has been denied.  The Denial Letter will be faxed once the letter has been approved.  Amie verbalized understanding., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 03232017 | 2017-03-23T13:25:24+00:00 |  | 000090870-01 | Herbert | Peach | BEERS, RICHARD T | 903798 | RICHARD T | BEERS | 1316912306 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03242017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 03242017 | 03252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Denied | A170323102 | R2990 | Unspecified symptoms and signs involving the nervous system | ICD10 | 03242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |
| 03232017 | 2017-03-23T16:40:58+00:00 |  | 000041185-01 | JOHN | GATEWOOD | MOUNT CARMEL HEALTH SYS | 920534 |  | MOUNT CARMEL MEDICAL CTR REHAB | 1578648085 | MOUNT CARMEL HEALTH SYS | 920534 | 1578648085 | MOUNT CARMEL MEDICAL CTR REHAB | 1578648085 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CTR REHAB | 03242017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 03242017 | 03252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Denied | A170324002 | I4891 | Unspecified atrial fibrillation | ICD10 | 03242017 |  |  |  | 0 | 0 |  | 0 |  |  | Completed Phys Rev for request for IPHR , Clinical submitted reviewed  recommend Denial of IPHR, PCT with Kristy  MCW Acute IPHR  notified of denial of acute rehab due to medical endurance; services appropriate for SNF;, Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 03232017 | 2017-03-23T17:30:18+00:00 |  | 000090179-01 | Anna | Hatoum | HEALTH SOUTH REHAB HOSP | 929822 |  | HEALTH SOUTH REHAB HOSP | 1548233257 | HEALTH SOUTH REHAB HOSP | 929822 | 1548233257 | HEALTH SOUTH REHAB HOSP | 1548233257 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | HEALTH SOUTH REHAB HOSP | 03242017 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Inpatient | 03242017 | 03252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Denied | A170324004 | E6601, J441, M170, M1A00X0 | Idiopathic chronic gout, unspecified site, without tophus | ICD10 | 03242017 |  |  |  | 0 | 0 |  | 0 |  |  | Call placed to Chrissy Booher @ HS 9374248215. She indicated that they are effective with MediGold as of 3/1/17 per her contract in hand.  I referred her to Cathy Wood 614 546 4815 or Karina Ohlney 614 546 3507. She also informed me that this is a standard rehab request not expedited  auth updated to reflect that., Per Matt Barrett  Health South in the Cincinnati and Dayton were effective 03/01/2017., PC to Chrissy Booher @ HS 9374248215.  She relays that member has decided to pursue Acute Rehab., PC to Chrissy at Dayton HealthSouth ARU. Advised that rehab would likely be denied  she understood and agreed that member could be served at a SNF level of care. | 03242017 | Rehab | Rehab |  | 0 |
| 03232017 | 2017-03-23T17:57:27+00:00 |  | 000112586-01 | Rosemary | Ross | INTERNAL MEDICINE OF CIN | 926760 | ANNA N | MAXEY | 1356410641 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 03242017 | Denied | MediGold Southwest OH Essential Care | Fax | Criteria Not Met | Inpatient | 03242017 | 03252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Denied | A170324005 | S069X0A | Unsp intracranial injury w/o loss of consciousness, init | ICD10 | 03242017 |  |  |  | 0 | 0 |  | 0 |  |  | Mercy Anderson Phsyical Med and Rehab has provider number 922607 but has no affiliates., 67 yof fell d/t knee bucking  sustained lac to scalp-stapled. Recent immobility at home d/t rt knee issues-recent injection.  Not able to bath/shower at home-takes sponge bath.  Not able to do LE dressing-wears shoes and socks atc.  Sleeps in recliner. Oral intake has been poor d/t immobility., No medical issues that warrant acute rehab.  She is deconditioned but does not require acute rehab level of care. | 03242017 | Rehab | Rehab | Approved | 0 |
