Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-14
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-14
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
| 08042017 | 2017-08-04T00:30:45+00:00 | Q18999842 | 000057061-01 | LAWRENCE | MOCK | OH ONCOLOGY & HEMATOLOGY | 934932 | MARK E | THOMPSON | 1093763195 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08082017 | 02042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170805049 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 08142017 | J9271 | INJ PEMBROLIZUMAB | HCPCS | 1600 | 1600 | Approved | 181 | HCPCS | HC | J9271: 1600 Pembrolizumab 200 mg  IV  day 1  every 21 days  8 cycles |  |  |  |  | 0 |
| 08112017 | 2017-08-11T15:29:46+00:00 |  | 000031077-01 | JERRY | BUSH | OSU INTERNAL MED LLC | 922399 | ALEJANDRO | DIEZ | 1669670782 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 08142017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 08182017 | 10182017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170811155 | Z940 | Kidney transplant status | ICD10 | 08142017 | 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 62, 62, 62, 62 | HCPCS | HC | Called 614-293-8746 on 081117 at 16:10:00 to let them know that we needed clinical documentation for processing but the transplant emergency service was answering phones., Called Kelly Toops on 081417 at 10:30:44 and regards to clinical documentation for this request but had to leave a VM., SPOKE TO KELLY AND SHE FAXED RECORDS THIS AM TO ATTN DAWN. |  |  |  |  | 0 |
| 08112017 | 2017-08-11T10:21:53+00:00 | Q19067082 | 000079256-01 | Ronald | Swisher | MARIETTA MEM HSP | 948282 | MOTAZ | MOUSSA | 1306178256 | MARIETTA MEMORIAL HSP | 923195 | 1215936927 | RYAN K MAY | 1134126139 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE | RYAN K | MAY | 08142017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08142017 | 10132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170812059 | R9439 | Abnormal result of other cardiovascular function study | ICD10 | 08142017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 08102017 | 2017-08-10T15:48:37+00:00 | Q19067734 | 000083542-01 | Thomas | Ray | KNOX COMMUNITY HSP PHYS | 919524 | CHRISTOPHER H | HETRICK | 1558579839 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 08142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08112017 | 09102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170812065 | J329 | Chronic sinusitis, unspecified | ICD10 | 08142017 | 70486 | CAT SCAN MAXIOFACIAL WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08112017 | 2017-08-11T13:46:40+00:00 | Q19075498 | 000103796-01 | Richard | Sutton | ALLIANCE PHYSICIANS INC | 902322 | JOHN M | DUCHAK III | 1841269057 | DAYTON CARDIOLOGY & VASC | 902532 | 1386775245 | DAYTON CARDIOLOGY & VASC CNSLT INC | 1386775245 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DAYTON CARDIOLOGY & VASC CNSLT INC | 08142017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08222017 | 09212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170812028 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 08142017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07212017 | 2017-07-21T09:28:22+00:00 | Q18912169 | 000079613-01 | Richard | Cross | GENESIS MEDICAL GRP LLC | 922146 | SHYAMAL | BASTOLA | 1306003033 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 08142017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07312017 | 01272018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170724064 | T387X1A | Poisoning by androgens and anabolic congeners, acc, init | ICD10 | 08142017 | J0897 | Denosumab injection | HCPCS | 120 | 120 | Approved | 181 | HCPCS | HC | J0897: 120 INJECTION  DENOSUMAB  1 MG  Dispensed as: 60.00 mg  1 treatment(s) each cycle  2 cycle(s) |  |  |  |  | 0 |
| 08032017 | 2017-08-03T09:30:44+00:00 |  | 000116495-01 | Vivian | Shutts | FIRST SETTLEMENT ORTHOS | 924320 | JASON L | GESSEL | 1861672669 | FIRST SETTLEMENT ORTHOS | 924319 | 1215992458 | FIRST SETTLEMENT ORTHOPAEDICS INC | 1215992458 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | FIRST SETTLEMENT ORTHOPAEDICS INC | 08142017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 08032017 | 09032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170803132 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08142017 | 20610, J7326 | Gel-one | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 07282017 | 2017-07-28T14:39:13+00:00 |  | 000101674-01 | Constance | Bowers | ORTHOPEDIC ONE INC | 927311 | DAVID M | WITTER | 1518992510 | KINEX MEDICAL COMPANY | 905947 | 1942238514 | KINEX MEDICAL COMPANY | 1942238514 | DME | DME | Pre-Service | PRE |  | KINEX MEDICAL COMPANY | 08142017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 07282017 | 09082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170728132 | M5030 | Other cervical disc degeneration, unsp cervical region | ICD10 | 08142017 | E0849 | TRACTION EQUIPMENT, CERVICAL, FREE-STANDING STAND/FRAME, PNE | HCPCS | 1 | 1 | Approved | 43 | HCPCS | HC | 08/10/17  1435 Called Cornerstone stated they refer to Biocare Orthopedic Prosthetics & Orthotics 614-920-2811, 8/10/17 14:34 Called BioCare and spoke with Abbey who stated they do not do Cervical traction, Discussed case with Molly Barr Director of Medical Management at MediGold Spoke with Elana at Cornerstone who told us to call Edgepark, Called Edgepark and left a message for jason Cash(800-321-0591 press 1 ext 3315) Left vmm asking if they do cervical traction, Called Hanger Clinic (614-481-8338) spoke with Kitty who stated they no longer do Cervical traction, Called Capital orthotics (614-451-0446)  and spoke with Shauna - no longer doing Cervical traction or any traction, Called Edgepark(800-321-0591 press 1 ext 7783) spoke with John the nurse in CM  who stated they do not do cervical traction, Emailed Matt Barrett;  the manager of Provider contracting at MediGold; await a responce back, Single Case unsigned with case Jonathan Pacias with Contracting at MediGold faxed it last night  Called this am at 0800 requesting a call for Renee Bauer to call back, Still no response Called Renee Bauer & then I called alternating # 262-521-7340 Spoke to Krysta who stated Renee is out ill  She will get single case agreement signed and then fax back, Called Cindy at Dr Witter's office left message requesting more clinical information, At 1400 spoke with Britany who is working with Cindy and Dr Witter today  She will fax information, At 1505 Spoke with Britany stated she is  sending 135 pages via computer fax, 1533 No clinical received Called again and spoke with Brittany who stated it is still faxing   Stated she will print initial visit and last few visits and then fax via land line fax, Extension letter sent as Medical Director has not had time to review case |  |  |  |  | 0 |
| 08102017 | 2017-08-10T13:21:15+00:00 | Q19049770 | 000015960-01 | CHARITY | NEECE | ADENA MEDICAL GROUP LLC | 935877 | LLOYD W | COATS | 1477558906 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 08142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08092017 | 09082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170812100 | R911 | Solitary pulmonary nodule | ICD10 | 08142017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08112017 | 2017-08-11T10:40:09+00:00 | Q19072343 | 000115078-01 | Garland | Fletcher | KNOX COMMUNITY HSP PHYS | 950140 | ABIGAIL L | ELLIOTT | 1053686725 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 08142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08142017 | 09132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170812086 | M7750 | Other enthesopathy of unspecified foot | ICD10 | 08142017 | 73718 | MRI LOWER EXTREMITY W/O DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08072017 | 2017-08-07T12:10:05+00:00 |  | 000114558-01 | ROBERT | MOSEL | MID OH ONCOLOGY HEMATOLO | 937410 | ROBERT | RUPERT | 0 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 08142017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 08072017 | 11072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170807020 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 08142017 | 97161, 97162, 97163, 97164, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07212017 | 2017-07-21T10:40:14+00:00 | Q18916522 | 000115502-01 | DONALD | ROBERTS | GENESIS MEDICAL GRP LLC | 921897 | WILLIAM W | CHANG | 1245223619 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 08142017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07242017 | 08232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170724013 | M545 | Low back pain | ICD10 | 08142017 | 72157, 72158, 72146 | MRI, SPINAL CANAL AND CONTENTS, THORACIC; WITHOUT CONTRAST MATERIAL | CPT | 0, 1, 1 | 1, 1, 1 | Void, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08142017 | 2017-08-14T10:15:47+00:00 |  | 000089101-01 | Donna | Napier | NEUROSCIENCE CENTER | 907332 | JOHN | KISSEL | 1285718130 | NEUROSCIENCE CENTER | 937422 | 1962431817 | NEUROSCIENCE CENTER | 1962431817 | Out of Network Services | OONS | Pre-Service | PRE |  | NEUROSCIENCE CENTER | 08142017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 08142017 | 11142017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170814006 | M62512, M6281, M958 | Oth acquired deformities of musculoskeletal system | ICD10 | 08142017 | 99205, 99214, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 2, 3 | 1, 2, 3 | Approved, Approved, Approved | 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 02212017 | 2017-02-21T15:33:01+00:00 | 17788113 | 000099850-01 | Brian | Schrubb | ALLIANCE PHYSICIANS INC | 902323 | IRSHAD | HUSSAIN | 1073582201 | DAYTON CARDIOLOGY & VASC | 902532 | 1386775245 | DAYTON CARDIOLOGY & VASC CNSLT INC | 1386775245 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | DAYTON CARDIOLOGY & VASC CNSLT INC | 08142017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02202017 | 03222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170221067 | R0609 | Other forms of dyspnea | ICD10 | 08142017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08112017 | 2017-08-11T11:58:20+00:00 | Q19073715 | 000040556-01 | PRISCILLA | JONES | DIGESTIVE SPEC INC | 903131 | TERESSA J | PATRICK | 1992786222 | DIGESTIVE SPEC INC | 901785 | 1770556532 | DIGESTIVE SPECIALISTS INC | 1770556532 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DIGESTIVE SPECIALISTS INC | 08142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08142017 | 09132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170812032 | K5660 | Unspecified intestinal obstruction | ICD10 | 08142017 | 74261 | CT COLONOGRAPHY, W/O DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08042017 | 2017-08-04T06:41:14+00:00 | Q19016543 | 000044240-01 | SARA | MYERS | COPC CENTRAL OHIO PRIMAR | 932486 | MAGDALENA | TEODORESCU | 1750674693 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 08142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08072017 | 09062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170805080 | S0990XA | Unspecified injury of head, initial encounter | ICD10 | 08142017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07242017 | 2017-07-24T14:34:37+00:00 |  | 000010445-01 | ALLEN | BERRY | OSU SURGERY LLC | 914209 | SHERIF R | ABDEL-MISIH | 1255501250 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 08142017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07242017 | 10242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170724131 | C229 | Malig neoplasm of liver, not specified as primary or sec | ICD10 | 08142017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC | RECEIVED PHONE CALL FROM TAMMY G AT OSU  REQUESTED PROVIDER CHANGE FROM DR SCHMIDT TO DR ABDEL-MISIH  NO OTHER CHANGES REQUESTED  AUTH UPDATED. |  |  |  |  | 0 |
| 07312017 | 2017-07-31T10:23:05+00:00 |  | 000098554-01 | Teresa | Leffel | MERCY HEALTH PHYSICIANS | 927842 | ERIC B | METZ | 1952408767 | MERCY HEALTH PHYSICIANS | 927842 | 1205887023 | ERIC B METZ | 1952408767 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE | ERIC B | METZ | 08142017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 07312017 | 08312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170731106 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 08142017 | J7327 | MONOVISC INJ PER DOSE | HCPCS | 1 | 1 | Approved | 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 08142017 | 2017-08-14T14:39:25+00:00 |  | 000073972-01 | David | Kilbarger | ORTHO & SPINE CTR LLC | 907844 | KEDAR K | DESHPANDE | 1801891007 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Out of Network Services | OONS | Pre-Service | PRE |  | GRANT MEDICAL CENTER | 08142017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 08142017 | 09142017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170814021 | M961 | Postlaminectomy syndrome, not elsewhere classified | ICD10 | 08142017 | 62362 | IMPLANTATION OR REPLACEMENT OF DEVICE FOR INTRATHECAL OR | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 07282017 | 2017-07-28T12:57:15+00:00 |  | 000001299-01 | KATHLEEN | MORGENSTERN | CENTERBURG RESPIRATORY A | 949066 |  | CENTERBURG RESPIRATORY AND SPECIALTY | 1083157747 | CENTERBURG RESPIRATORY A | 949066 | 1083157747 | CENTERBURG RESPIRATORY AND SPECIALTY | 1083157747 | Part B Therapy | OP THER | Pre-Service | PRE |  | CENTERBURG RESPIRATORY AND SPECIALTY | 08142017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 08142017 | 08152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170728124 | G20 | Parkinson's disease | ICD10 | 08142017 | K0001 | STANDARD WHEELCHAIR | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | RN Mary Amrine  called the LTC facility  and the member does live there  This is for OT for a w/c evaluation.  Looks like may have been already done., request denied at physician review due to being a retro request and no prior auth has been requested for a custom WC. denial letter sent for review, Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 08112017 | 2017-08-11T14:42:18+00:00 |  | 000113438-01 | Donald | Brown | NEUROLOGICAL & SLEEP DIS | 949856 | JENNIFER | KELCH | 1609324441 | NEUROLOGICAL & SLEEP DIS | 921663 | 1477519973 | BRUCE C CORSER | 1790727030 | Out of Network Services | OONS | Pre-Service | PRE | BRUCE C | CORSER | 08142017 | Denied | MediGold Essential Care | Fax | Services Available In-Network | Outpatient | 08142017 | 08152017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170811149 | G4733 | Obstructive sleep apnea (adult) (pediatric) | ICD10 | 08142017 | 99213 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Called Barb at the provider's office to request clinical documentation for this to be processed as urgent., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 08072017 | 2017-08-07T09:29:39+00:00 |  | 000115330-01 | DIANA | JOHNSON | ORTHO TRAUMA SRVS LTD | 911031 | JOAQUIN | CASTANEDA | 1801932447 | ORTHO TRAUMA SRVS LTD | 926774 | 1285622688 | ORTHOPEDIC TRAUMA SERVICES LTD | 1285622688 | Out of Network Services | OONS | Pre-Service | PRE |  | ORTHOPEDIC TRAUMA SERVICES LTD | 08142017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 08212017 | 10212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170807004 | S62102A, S7222XA | Displaced subtrochanteric fracture of left femur, init | ICD10 | 08142017 | 99024, 99214, 73510, 73550, 73110 | WRIST, COMPLETE, MIN. 3 VIEWS | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 62, 62, 62, 62, 62 | CPT | C4 |  |  |  |  |  | 0 |
| 08142017 | 2017-08-14T12:52:50+00:00 | Q19078283 | 000103699-01 | CHARLOTTE | BRADBURY | NEUROSCIENCE CENTER | 949989 | ARUN | RAMAMURTHY | 1114289683 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 08142017 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 08112017 | 09102017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170814011 | R413 | Other amnesia | ICD10 | 08142017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07312017 | 2017-07-31T13:31:00+00:00 |  | 000105971-01 | Forrest | Arnold | ORTHO CLINIC OF DAYTONA | 950786 | RICHARD K | GAINES | 1952355497 | ORTHO CLINIC OF DAYTONA | 909427 | 1558340240 | ORTHO CLINIC OF DAYTONA BEACH PA | 1558340240 | Out of Network Services | OONS | Pre-Service | PRE |  | ORTHO CLINIC OF DAYTONA BEACH PA | 08142017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 08032017 | 08312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170731119 | S72142D | Displ intertroch fx l femur, subs for clos fx w routn heal | ICD10 | 08142017 | 97110, 97530, 97140 | MANUAL THERAPY | CPT | 8, 8, 8 | 8, 8, 8 | Approved, Approved, Approved | 29, 29, 29 | CPT | C4 |  |  |  |  |  | 0 |
| 07312017 | 2017-07-31T18:02:21+00:00 |  | 000028177-01 | PATRICIA | CHANDLEY | MOUNT CARMEL HLTH SYS | 944092 | BRITTON D | RINK | 1811034242 | AMBRY GENETICS CORPORATION | 929192 | 1861568784 | AMBRY GENETICS CORPORATION | 1861568784 | Genetic Testing | OP GEN | Pre-Service | PRE |  | AMBRY GENETICS CORPORATION | 08142017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 07112017 | 09112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170801074 | C189, Z803, Z8042 | Family history of malignant neoplasm of prostate | ICD10 | 08142017 | 81211, 81213 | BRCA1&2 UNCOM DUP/DEL VAR | CPT | 1, 1 | 1, 1 | Approved, Approved | 63, 63 | CPT | C4 |  |  |  |  |  | 0 |
| 08072017 | 2017-08-07T11:52:13+00:00 |  | 000109076-01 | Gary | Lowry | THE OH STATE UNIVERSITY | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 08142017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 08162017 | 09162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170807018 | C8330, I824Z3 | Ac emblsm and thombos unsp deep veins of dist low extrm, bi | ICD10 | 08142017 | 37193, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 08092017 | 2017-08-09T16:27:10+00:00 |  | 000083167-01 | Patricia | Preston | UNIVERSITY OF CINCINNATI | 924152 | MILTON T | SMITH | 1790726446 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Transplant Eval | TRANS | Pre-Service | PRE |  | UNIVERSITY HOSPITAL | 08142017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 08142017 | 09142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170810060 | K831 | Obstruction of bile duct | ICD10 | 08142017 | 43260, 43262, 43264, 43274, 43275, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32 | HCPCS | HC | PC to provider  LVMM  auth approved  advised of auth number. |  |  |  |  | 0 |
