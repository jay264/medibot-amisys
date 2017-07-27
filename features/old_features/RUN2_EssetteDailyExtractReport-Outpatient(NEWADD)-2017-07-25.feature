Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-25
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-25
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
| 02062017 | 2017-02-06T10:44:13+00:00 | Q17685120 | 000027827-01 | DORTHA | CARIDAS | OH ONCOLOGY & HEMATOLOGY | 935974 | TAREK A | CHIDIAC | 1922066778 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 07252017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02062017 | 08052017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170206028 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 07252017 | J9271 | INJ PEMBROLIZUMAB | HCPCS | 1 | 1 | Approved | 181 | HCPCS | HC | ON 02/06/17 @ 16:37 SPOKE WITH MBR AND GAVE APPROVAL |  |  |  |  | 0 |
| 06122017 | 2017-06-12T09:12:09+00:00 |  | 000039915-01 | MARVIN | VALENTINE | OSU INTERNAL MED LLC | 928684 | BHAVANA | BHATNAGAR | 1154598498 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07252017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06122017 | 09122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170612109 | C9200 | Acute myeloblastic leukemia, not having achieved remission | ICD10 | 07252017 | G0364, 38221, 88313, 88237, 88262, 88184, 88342, 88307, 36415, 85025, 80042, 83615, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 82565, 84520, 82374, 82435, 84295, 84132, 85652, 82784, 82785, 88184, 84550, 82232, 84100, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T09:57:29+00:00 | Q18575402 | 000011660-01 | FOLLET | LEE | OH ONCOLOGY & HEMATOLOGY | 936113 | MARK H | KNAPP | 1952359549 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 07252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06082017 | 07082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170612174 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 07252017 | 74177, 71260, 70460, 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 0, 0, 1, 1 | 1, 1, 1, 1 | Withdrawal, Withdrawal, Approved, Approved | 31, 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06162017 | 2017-06-16T15:01:13+00:00 |  | 000068535-01 | MARILYN | WINKFIELD | OSU INTERNAL MED LLC | 926990 | DAVID | CARBONE | 1558453977 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 07252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06162017 | 07162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170616167 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 07252017 | 74177, 70553, 71260, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 31, 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 06192017 | 2017-06-19T10:25:07+00:00 |  | 000062837-01 | MICHAEL | CASTO | OSU OTOLARYNGOLOGISTS LL | 916952 | RICARDO L | CARRAU | 1740252691 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07252017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06192017 | 09192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170619142 | C329, J398 | Other specified diseases of upper respiratory tract | ICD10 | 07252017 | 99211, 99212, 99213, 99214, 99215, 92507, 92610, 92612, 92526, 92597, 31575, 31579, 31231, G0463, 31237 | NASAL/SINUS ENDOSCOPY, SURGICAL; | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 07172017 | 2017-07-17T10:48:36+00:00 |  | 000100819-01 | Judy | Roth | KRIS MAHALINGAM MD IC | 920896 | KRISHNAMURTHI | MAHALINGAM | 1487636866 | MULLANEYS PHARMACY HOME HEALTH CARE | 922544 | 1225013014 | MULLANEYS PHARMACY HOME HEALTH CARE | 1225013014 | DME | DME | Pre-Service | PRE |  | MULLANEYS PHARMACY HOME HEALTH CARE | 07252017 | Approved | MediGold Southwest OH Essential Care | Member | Medical Criteria Met | Outpatient | 07122017 | 10122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170717117 | E440, L89154 | Pressure ulcer of sacral region, stage 4 | ICD10 | 07252017 | E0261, E0373 | NONPOWERED ADVANCED PRESSURE REDUCING MATTRESS | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 93, 93 | HCPCS | HC | Checked AWD In May there was a charge for Visiting Nurse Association Called (513-345-8030) left a message for Lisa to find out if member is currently a patient   what treatment plan is, Called phone # listed for Krishnamurthi Mahalingam MD  (513-686-5757) which is the The Jewish Hospital - Mercy Health Wound Care Center - spoke with Natalie  She stated she will send last clinical note Stated Dr Mahalingam is her wound care physician and he ordered bed. They ordered through Cork Medical Supply who subcontracted with Mullaney's Pharmacy and Medical Supply.  MBR is still getting home care through Visiting Nurse Association, Natalie will send clinical, Received a call from Lisa at Visiting Nurse Association Called (513-345-8030)  She will have supervisor call as they have 2 computer systems  Stated MBR had PT starting January 19 2017  till March  Stated last home care visit is 6/27/17 but they are having problems with new system  She will ask supervisor to call and confirm, Called Wafaa Foad MD's office (513-984-4565) MBR's PCP listed as in-network  Spoke with Kerry who will send clinical information  She also thought MBR has HHC, Called American Homepatient Inc (513-769-7500) We do not go to that area of town, Spoke with Bob of Cornerstone Medical Services Midwest LLC ( in Cincinnati) phone 888-574-0202 stated they don't have specialty mattress (E0373), Called Mullaneys Pharmacy and Medical Supply  -Spoke to Erin who stated MBR has had a hospital bed )E0261  E0373 Specialty Mattress (Elite Balance Air Mattress) & Hoyer Lift  E0261 since April. She doesn't have any authorization  but told me to call 513-731-1400 ext 314  Called spoke to Debbie  who is going to have Tammy in Authorization call back, Tammy called at Mullaneys Pharmacy and Home Health Care and stated that they are a provider for MediGold She will send a copy of the contract and W9 form, Essette fax did not fax Authorization and approval manually right faxed to Tammy Mullaneys Pharmacy and Medical Supply |  |  |  |  | 0 |
| 07212017 | 2017-07-21T19:03:24+00:00 | Q18890444 | 000083423-01 | Ruth | Wiegand | SURG INTERVENTIONS LLC | 937369 | HOWARD L | REEVES | 1639245350 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 07252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08142017 | 09132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170725022 | I712 | Thoracic aortic aneurysm, without rupture | ICD10 | 07252017 | 74175, 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07242017 | 2017-07-24T12:29:26+00:00 | Q18913451 | 000085149-01 | Mary | Disbennett | ADENA MEDICAL GROUP LLC | 926843 | EMILIA N | ANIGBO | 1083816953 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 07252017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07312017 | 08302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170725052 | R911 | Solitary pulmonary nodule | ICD10 | 07252017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07242017 | 2017-07-24T12:46:02+00:00 | Q18914048 | 000099528-01 | Larry | Conrad | UNIVERSITY RADIATION ONC | 933056 | RAJU R | RAVAL | 1962733949 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 07252017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07212017 | 10192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170725053 | C719 | Malignant neoplasm of brain, unspecified | ICD10 | 07252017 | 77386 | NTSTY MODUL RAD TX DLVR CPLX | CPT | 1 | 1 | Approved | 91 | CPT | C4 |  |  |  |  |  | 0 |
| 07242017 | 2017-07-24T09:06:06+00:00 | Q18918370 | 000082211-01 | Virginia | Greene | RADIOLOGY INC | 914289 | ABHAY S | GOKHALE | 1528371937 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 07252017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07212017 | 08202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170725060 | C3431 | Malignant neoplasm of lower lobe, right bronchus or lung | ICD10 | 07252017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07242017 | 2017-07-24T08:28:49+00:00 | Q18919321 | 000075995-01 | Kenneth | Ruprecht | OH ONCOLOGY & HEMATOLOGY | 935093 | JEFFREY | ZANGMEISTER | 1871541979 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 07252017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08082017 | 02042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170725061 | C9030 | Solitary plasmacytoma not having achieved remission | ICD10 | 07252017 | J3489 | ZOLEDRONIC ACID 1MG | HCPCS | 24 | 24 | Approved | 181 | HCPCS | HC | J3489: 24 INJECTION  ZOLEDRONIC ACID  1 MG  Dispensed as: 4.00 mg  1 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 07212017 | 2017-07-21T13:48:03+00:00 | Q18902568 | 000011430-01 | JACK | MOORE | COSHOCTON COUNTY MEM HSP | 949424 | SCOTT P | STEPHENS | 1770741902 | PROSCAN IMAGING GAHANNA LLC | 903877 | 1912997032 | PROSCAN IMAGING GAHANNA LLC | 1912997032 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | PROSCAN IMAGING GAHANNA LLC | 07252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07262017 | 08252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170725063 | M25512 | Pain in left shoulder | ICD10 | 07252017 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07242017 | 2017-07-24T07:17:21+00:00 | Q18902926 | 000118585-01 | Janice | White | SPFLD ORTHO SPORTS MED L | 908174 | IAN | THOMPSON | 1619928371 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY MEMORIAL HOSPITAL - CAH | 07252017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07202017 | 08192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170725064 | M7551 | Bursitis of right shoulder | ICD10 | 07252017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07242017 | 2017-07-24T08:47:05+00:00 | Q18905270 | 000114008-01 | Kathryn | Brownfield | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 07252017 | Approved | TRINITY HEALTH | HealthHelp | Medical Criteria Met | Outpatient | 07202017 | 08192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170725065 | M25561 | Pain in right knee | ICD10 | 07252017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07212017 | 2017-07-21T19:07:31+00:00 | Q18905968 | 000108520-01 | Dennis | Gruber | ALLIANCE PHYSICIANS INC | 906600 | MALEK M | SAFA | 1427016914 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 07252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07202017 | 08192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170725066 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 07252017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07212017 | 2017-07-21T19:06:37+00:00 | Q18906954 | 000047022-01 | CAROLE | SCHOONOVER | ADENA MEDICAL GROUP LLC | 926742 | RONALD L | RISH JR | 1295830453 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 07252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07202017 | 08192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170725067 | R0981 | Nasal congestion | ICD10 | 07252017 | 70486 | CAT SCAN MAXIOFACIAL WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07242017 | 2017-07-24T08:54:27+00:00 | Q18908255 | 000097330-01 | Diana | Hypes | OH ONCOLOGY & HEMATOLOGY | 936113 | MARK H | KNAPP | 1952359549 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 07252017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07262017 | 08252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170725068 | C3431 | Malignant neoplasm of lower lobe, right bronchus or lung | ICD10 | 07252017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07242017 | 2017-07-24T08:13:56+00:00 | Q18909175 | 000097012-01 | Natalie | Neff | KUDLAPUR, SHIVAPRAKASH P | 935839 | SHIVAPRAKASH P | KUDLAPUR | 1891780326 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 07252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07202017 | 08192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170725069 | M549 | Dorsalgia, unspecified | ICD10 | 07252017 | 72158 | MRI-SPINAL CANAL/CONTENTS,FOLLOWED BY CONTRAST & MORE SEQUENCES;LUMBAR | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07212017 | 2017-07-21T19:08:32+00:00 | Q18910207 | 000061239-01 | TONY | HOOVER | CEN OH UROLOGY GRP INC | 942974 | ROBERT J | PIROLI | 1730180662 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 07252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08032017 | 11012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170725070 | C61 | Malignant neoplasm of prostate | ICD10 | 07252017 | G6015 | RADIATION TX DELIVERY IMRT | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 07212017 | 2017-07-21T09:23:51+00:00 | Q18910551 | 000099989-01 | Evelyn | Johnson | SPRINGFIELD HEMATOLOGY & | 901540 | RAVI C | KHANNA | 1144221904 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 07252017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07212017 | 01172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170725071 | C50111 | Malignant neoplasm of central portion of right female breast | ICD10 | 07252017 | J9395 | INJECTION, FULVESTRANT, 25 MG | HCPCS | 240 | 240 | Approved | 181 | HCPCS | HC | J9395: 240 INJECTION  FULVESTRANT  25 MG  Dispensed as: 500.00 mg  2 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 07242017 | 2017-07-24T09:08:29+00:00 | Q18910632 | 000093202-01 | Sandra | Moellendick | MARIETTA HLTH CARE PHYS | 923182 | CURTIS D | WHITE | 1427055474 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 07252017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07262017 | 08252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170725072 | R102 | Pelvic and perineal pain | ICD10 | 07252017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07242017 | 2017-07-24T13:01:32+00:00 | Q18910672 | 000031613-01 | MARGARET | BROOKS | JACK STANKO MD LLC | 934869 | JOHN | STANKO JR | 1891751319 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 07252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07242017 | 09222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170725073 | Z45010 | Encntr for checking and test of card pacemaker pulse gnrtr | ICD10 | 07252017 | 33228, C1785, C2619 | PACEMAKER, DUAL CHAMBER, NON RATE-RESPONSIVE (IMPLANTABLE) | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 07202017 | 2017-07-20T12:43:53+00:00 | Q18891631 | 000073283-01 | Mary | Lilly | OSU HLTH SYS ORTHO ONC P | 911790 | THOMAS J | SCHARSCHMIDT | 1639399918 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 07252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07252017 | 08242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170725074 | D4989 | Neoplasm of unspecified behavior of other specified sites | ICD10 | 07252017 | 72197 | MRI PELVIS W/O & W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07212017 | 2017-07-21T19:04:21+00:00 | Q18891947 | 000039817-01 | NORMA | PARK | LICKING MEM PULMONOLOGY | 930953 | ASEGID H | KEBEDE | 1598716201 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 07252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07282017 | 08272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170725075 | Z87891 | Personal history of nicotine dependence | ICD10 | 07252017 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 07212017 | 2017-07-21T19:05:36+00:00 | Q18892948 | 000107902-01 | Richard | Liston | MOUNT CARMEL HLTH PRVDRS | 900587 | BRYAN W | GHILONI | 1760429914 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 07252017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07192017 | 08182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170725076 | M545 | Low back pain | ICD10 | 07252017 | 74181 | MRI ABDOMEN | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07242017 | 2017-07-24T08:04:27+00:00 | Q18894890 | 000043746-01 | NANCY | DAY | KATZ, STEVEN E | 936995 | STEVEN E | KATZ | 1518906866 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 07252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07192017 | 08182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170725077 | H4720 | Unspecified optic atrophy | ICD10 | 07252017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07212017 | 2017-07-21T18:39:44+00:00 | Q18877688 | 000111555-01 | Homer | Hill | LICKING MEM HLTH PROF | 903851 | DAVID E | SUBLER | 1881693349 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 07252017 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 07242017 | 08232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170725078 | R1011 | Right upper quadrant pain | ICD10 | 07252017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07212017 | 2017-07-21T18:59:44+00:00 | Q18885138 | 000084416-01 | Judith | Stump | CARDIOLOGISTS OF GREENE | 904143 | ASHRAF | KORAYM | 1760471692 | CARDIOLOGISTS OF GREENE | 918558 | 1619146859 | CARDIOLOGISTS OF GREENE COUNTY LLC | 1619146859 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CARDIOLOGISTS OF GREENE COUNTY LLC | 07252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07182017 | 08172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170725079 | I319 | Disease of pericardium, unspecified | ICD10 | 07252017 | 75557 | CARDIAC MRI FOR MORPH,14.59,14.59 | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07242017 | 2017-07-24T16:05:45+00:00 |  | 000106964-01 | Melvin | Hill | HAND & MICROSURG ASSOC I | 910659 | LAWRENCE M | LUBBERS | 1639177512 | COLUMBUS HAND THERAPY INC | 900978 | 1124048582 | COLUMBUS HAND THERAPY INC | 1124048582 | DME | DME | Pre-Service | PRE |  | COLUMBUS HAND THERAPY INC | 07252017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 07242017 | 10242017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170725151 | S62621B, S62637B, S68611A | Complete traumatic trnsphal amputation of l idx fngr, init | ICD10 | 07252017 | L3808 | WHFO, rigid w/o joints | HCPCS | 1 | 1 | Approved | 93 | HCPCS | HC | Essette fax did not fax Authorization and approval manually right faxed to Lawrence M Lubbers MD's office |  |  |  |  | 0 |
| 07252017 | 2017-07-25T10:31:44+00:00 | Q18933222 | 000116281-01 | Rena | Brown | OSU INTERNAL MED LLC | 930498 | KRISTEN K | CIOMBOR | 1356542369 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 07252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07252017 | 01212018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170725155 | C20 | Malignant neoplasm of rectum | ICD10 | 07252017 | J9190, J9035 | INJECTION, BEVACIZUMAB, 10 MG | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
