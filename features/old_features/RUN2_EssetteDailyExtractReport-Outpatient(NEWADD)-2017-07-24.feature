Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-24
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-24
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
| 07062017 | 2017-07-06T13:59:12+00:00 |  | 000091151-01 | Paula | Seevers | ANDREWS, DEBORAH | 944881 | DEBORAH | ANDREWS | 1114968807 | ANDREWS, DEBORAH | 944881 | 1114968807 | DEBORAH ANDREWS | 1114968807 | OP Behavioral Health | OP BH | Pre-Service | PRE | DEBORAH | ANDREWS | 07242017 | Approved | MediGold Southwest OH Essential Care | Member | Medical Criteria Met | Outpatient | 06172017 | 10172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170706170 | F4323 | Adjustment disorder with mixed anxiety and depressed mood | ICD10 | 07242017 | 90837 | PSYTX PTAND/FAMILY 60 MINUTES | CPT | 8 | 8 | Approved | 123 | CPT | C4 | PHONE CALL PLACED THE NUMBER THE MEMBER PROVIDED FOR DR ANDREWS AT 513-561-5507  THIS NUMBER IS NOT A WORKING NUMBER., I LOCATED DR ANDREWS OFFICE NUMBER (513) 225-0155  AND LEFT A MESSAGE ON CONFIDENTIAL VOICE MAIL REQUESTING INFORMATION FOR MEMBER.  REQUESTED A RETURN CALL., RECEIVED RETURN CALL FROM DR ANDREWS  SHE IS OUT OF OFFICE UNTIL 7/20/17.  SHE IS HAPPY TO SEND INFORMATION AND REQUEST FOR ADDITIONAL VISITS  OBTAINED HER FAX NUMBER  WILL FAX HER PRIOR AUTH FORM.  REQUESTED TO EXTENDED DECISION PERIOD UNTIL ABLE TO GET INFORMATION TO MEDIGOLD. |  |  |  |  | 0 |
| 07122017 | 2017-07-12T14:10:15+00:00 |  | 000093796-01 | Thomas | McCormick | FAMILY SERVICE ASSOCIATI | 945135 | BONNIE R | PARISH | 1003100207 | WELLNESS CARD LLC | 923746 | 1558678151 | KENNETH D GLASS | 1417934340 | OP Behavioral Health | OP BH | Pre-Service | PRE | KENNETH D | GLASS | 07242017 | Approved | MediGold Medical Only | Fax | Medical Criteria Met | Outpatient | 07122017 | 10122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170712169 | F331 | Major depressive disorder, recurrent, moderate | ICD10 | 07242017 | 90837, 90834, 90832, 90863 | PHARMACOLOGIC MGMT W/PSYTX | CPT | 24, 24, 24, 24 | 24, 24, 24, 24 | Approved, Approved, Approved, Approved | 93, 93, 93, 93 | CPT | C4 | SPOKE TO STACY AND REQUESTED CLINICAL INFORMATION  TO SUPPORT REQUEST.  SHE WAS GOING TO SEE IF MEMBER HAD SIGNED RELEASE OF INFO FORM FOR INSURANCE AND THEN FAX IT IF PERMITTED |  |  |  |  | 0 |
| 07172017 | 2017-07-17T10:03:10+00:00 |  | 000081308-01 | Kathy | Shaw | OSU PHYSICAL MED LLC | 941881 | DANIEL | KIM | 1013147255 | REHAB MEDICAL OF COLUMBUS | 914581 | 1851320774 | REHAB MEDICAL OF COLUMBUS | 1851320774 | DME | DME | Pre-Service | PRE |  | REHAB MEDICAL OF COLUMBUS | 07242017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07242017 | 08242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170717121 | E6601, G4733, G710, G8929, I10, M150, M3320, M545, R609 | Edema, unspecified | ICD10 | 07242017 | E2369, E1028, E2377, E2313, E1002, E2300, E2620, K0108, E2311, E1012, E0955, E1028, E1028, E0956, E2623, K0858 | PWC gp3 hd sing pow opt s/b | HCPCS | 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1 | 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 397, 397, 397, 397, 397, 397, 397, 397, 397, 397, 397, 397, 397, 397, 397, 397 | HCPCS | HC | Received a call from Seth at Rehab Medical  Confirmed Fax#s, Seth at Rehab Medical of Columbus will call back with what single case price  for E2300, Spoke with Jonathan Pacis(JP) regarding need for single case agreement for E2300 Power Seat Elevator for vertical access. He is aware that authorization by Dr Wise Emailed him all clinical documentation and also Seth's information at Rehab Medical of Columbus, Office phone 855-396-3124 or 317-436-6176, Cell 765-425-0227    , Fax  844-429-9452  Seth direct fax, Called Seth at Rehab Medical He was given JP contact information  Aware after we get single case agreement back we can proceed with authorization, Seth called back  - He is aware we are waiting on Signed single case agreement for E2300  Stated he will send back in around 1 hour, Spoke with Jonathan Pacis(JP) He received signed contract and uploaded it into shared drive for E2300 |  |  |  |  | 0 |
| 07172017 | 2017-07-17T12:29:04+00:00 |  | 000081734-01 | James | Jack | OSU EYE PHYS & SURGEONS | 915820 | COLLEEN | CEBULLA | 1144264334 | MILLER ARTIFICIAL EYE LAB | 938322 | 1669495040 | MILLER ARTIFICIAL EYE LAB | 1669495040 | DME | DME | Pre-Service | PRE |  | MILLER ARTIFICIAL EYE LAB | 07242017 | Approved | MediGold Classic Preferred | Member | Services Not Available In-Network | Outpatient | 07242017 | 09242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170717123 | Z970 | Presence of artificial eye | ICD10 | 07242017 | V2624 | POLISHING/RESURFACING OF OCULAR PROSTHESIS | HCPCS | 1 | 1 | Approved | 63 | HCPCS | HC | Called OSU Havenor Eye Institute (Phone 614-293-8116) I was told to fax auth to Angel M at Fax 614-293-2359  They gave me the phone # for Miller Artificial Eye Lab (614)268-8233, Spoke with Ben at Miller Artificial Eye Laboratory (614)268-8233  Spoke with Ben who stated that last time member had anything done to ocular prostheses was 7/21/2016   Ben stated to fax authorization to Toledo office Fax # 419-474-3939, Essette fax did not fax  Authorization and approval manually right faxed to, ANGEL M/COLLEEN M. CEBULLA MD  OSU Havenor Eye Institute & Miller Artificial  Eye Laboratory |  |  |  |  | 0 |
| 07192017 | 2017-07-19T14:29:23+00:00 |  | 000076524-01 | Renee | Tackett | SCHWARTZ, DAVID P | 929957 | DAVID P | SCHWARTZ | 1942252218 | SCHWARTZ, DAVID P | 929957 | 1942252218 | DAVID P SCHWARTZ | 1942252218 | OP Behavioral Health | OP BH | Pre-Service | PRE | DAVID P | SCHWARTZ | 07242017 | Approved | MediGold Southwest OH Essential Care | Fax | Medical Criteria Met | Outpatient | 08012017 | 11012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170719170 | F329 | Major depressive disorder, single episode, unspecified | ICD10 | 07242017 | 90834, 90837, 90832 | PSYTX PTAND/FAMILY 30 MINUTES | CPT | 3, 3, 3 | 3, 3, 3 | Approved, Approved, Approved | 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 07192017 | 2017-07-19T16:17:11+00:00 |  | 000033704-01 | LAWRENCE | WILLIAMS | SENTARA MEDICAL GROUP | 951365 | JAMES J | BRENNAN | 1447217666 | SENTARA MEDICAL GROUP | 951365 | 1265485270 | JAMES J BRENNAN | 1447217666 | Radiology (HH) | OP RAD | Pre-Service | PRE | JAMES J | BRENNAN | 07242017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07192017 | 08192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170719175 | I614, L0291 | Cutaneous abscess, unspecified | ICD10 | 07242017 | 70450, 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | CPT | C4 | THIS MBR IS OUT OF TOWN I CALLED 7573884043 AND LEFT A V/M ON SUSAN STOVALS VOICEMAIL REQUESTING CLINICALS I GAVE MY NAME NUMBER AND FAX NUMBER, CALLED 7573884043 AGAIN LEFT VOICEMAIL FOR SUSAN TO SEND THE CLINICALS AGAIN. I SPOKE WITH HER ON 7/20/17 AND SHE SAID THAT SHE FAXED THEM BUT WE NEVER GOT THEM |  |  |  |  | 0 |
| 07202017 | 2017-07-20T06:33:37+00:00 |  | 000057684-01 | DENNIS | HARVEY | MID OH ONCOLOGY HEMATOLO | 937410 | ROBERT | RUPERT | 0 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07242017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 08072017 | 11072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170720048 | C07, C089, I2510, L989, T17908A | Unsp fb in resp tract, part unsp causing oth injury, init | ICD10 | 07242017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07202017 | 2017-07-20T07:51:12+00:00 |  | 000100451-01 | Eugene | Allen | RCHP WILMINGTON LLC | 949038 | STEVEN A | WALSTON | 1053623397 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07242017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 07202017 | 10202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170720111 | C029 | Malignant neoplasm of tongue, unspecified | ICD10 | 07242017 | 92507, 92610, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07202017 | 2017-07-20T11:27:17+00:00 |  | 000101519-01 | James | Wilson | OSU SURGERY LLC | 918628 | KYLE A | PERRY | 1821209925 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07242017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 08082017 | 11082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170720140 | C159 | Malignant neoplasm of esophagus, unspecified | ICD10 | 07242017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07202017 | 2017-07-20T13:02:19+00:00 |  | 000070034-01 | Bobby | Higginbotham | OSU OTOLARYNGOLOGISTS LL | 907556 | BRAD W | DESILVA | 1467494401 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07242017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 07262017 | 10262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170720145 | D020 | Carcinoma in situ of larynx | ICD10 | 07242017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07212017 | 2017-07-21T09:14:22+00:00 |  | 000039915-01 | MARVIN | VALENTINE | OSU INTERNAL MED LLC | 948088 | JOHN | CURFMAN | 1780039412 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07242017 | Approved | MediGold Classic Preferred | Fax | Transplant Evaluation | Outpatient | 07252017 | 10252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170721116 | D469 | Myelodysplastic syndrome, unspecified | ICD10 | 07242017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 36415, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07212017 | 2017-07-21T11:53:02+00:00 |  | 000114300-01 | Sharen | Kensler | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07242017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 07272017 | 10272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170721131 | C4921, G893 | Neoplasm related pain (acute) (chronic) | ICD10 | 07242017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07212017 | 2017-07-21T11:56:20+00:00 |  | 000114300-01 | Sharen | Kensler | OSU GENERAL INTL MED LLC | 943295 | CARMEN | SKINNER | 1821056144 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07242017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 07272017 | 10272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170721132 | C4921, G893 | Neoplasm related pain (acute) (chronic) | ICD10 | 07242017 | 99201, 99202, 99203, 99204, 99205, 93000, 85730, 85025, 71020, 85610, 36415, 94760, 83036, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07212017 | 2017-07-21T12:44:06+00:00 | Q18918493 | 000072342-01 | Sharon | Adams | FAM PHYS OF SPRINGFIELD | 907236 | ROBERT E | KNEISLEY | 1679598163 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07242017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07212017 | 08202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170724024 | R55 | Syncope and collapse | ICD10 | 07242017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07212017 | 2017-07-21T09:20:34+00:00 | Q18912790 | 000065695-01 | ROBERT | DETILLION | ADENA MEDICAL GROUP LLC | 906495 | GANAPATHY | KRISHNAN | 1063537645 | ADENA HEALTH SYSTEMS | 913325 | 1639362619 | ADENA MEDICAL GROUP LLC | 1235468083 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ADENA MEDICAL GROUP LLC | 07242017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07202017 | 01162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170724055 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 07242017 | J3489 | ZOLEDRONIC ACID 1MG | HCPCS | 18 | 18 | Approved | 181 | HCPCS | HC | J3489: 18 INJECTION  ZOLEDRONIC ACID  1 MG  Dispensed as: 3.00 mg  1 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 07202017 | 2017-07-20T15:03:41+00:00 | Q18895006 | 000094677-01 | Bobby | Gentry | FCMH MED & SURG ASSOC | 906143 | MARTA | GRYNIUK | 1538164595 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 07242017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07202017 | 08192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170724082 | R51 | Headache | ICD10 | 07242017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07242017 | 2017-07-24T07:50:04+00:00 |  | 000077275-01 | Donald | Chamberlain | UNIVERSITY RADIATION ONC | 949435 | JESSICA L | WOBB | 1356653984 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07242017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 07282017 | 10282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170724098 | C131 | Malig neoplasm of aryepiglottic fold, hypopharyngeal aspect | ICD10 | 07242017 | 92507, 92610, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07242017 | 2017-07-24T10:45:45+00:00 | Q18920771 | 000114300-01 | Sharen | Kensler | OSU INTERNAL MED LLC | 928059 | DAVID A | LIEBNER | 1174753537 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 07242017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07242017 | 08232017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170724121 | C4921 | Malig neoplm of conn and soft tiss of r low limb, inc hip | ICD10 | 07242017 | 73720, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
