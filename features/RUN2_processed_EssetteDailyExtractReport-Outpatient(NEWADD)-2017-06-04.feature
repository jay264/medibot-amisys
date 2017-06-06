Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-04
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-04
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
| 02212017 | 2017-02-21T10:25:03+00:00 |  | 000074071-01 | Ruth | Harper | OHIO ENT & ALLERGY PHYSI | 936078 | ADAM C | SPIESS | 1770555179 | OSU OTOLARYNGOLOGISTS LL | 935454 | 1861449407 | AMIT AGRAWAL | 1083648539 | Out of Network Services | OONS | Pre-Service | PRE | AMIT | AGRAWAL | 06022017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02212017 | 04212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170221023 | E215 | Disorder of parathyroid gland, unspecified | ICD10 | 06022017 | 99499, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 2, 2 | 2, 2 | Approved, Approved | 60, 60 | HCPCS | HC |  |  |  |  |  | 0 |
| 03092017 | 2017-03-09T18:55:43+00:00 | Q17906630 | 000011549-01 | RITA | MEREDITH | ADENA MEDICAL GROUP LLC | 937020 | JOHN S | KIM | 1073507380 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 06022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04032017 | 05032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170311082 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 06022017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04182017 | 2017-04-18T12:47:25+00:00 |  | 000083505-01 | Mark | Caudill | UNIVERSITY RADIATION ONC | 948092 | DARRION L | MITCHELL | 1801185020 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06022017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 04272017 | 07272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170418113 | C4442 | Squamous cell carcinoma of skin of scalp and neck | ICD10 | 06022017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 04202017 | 2017-04-20T13:19:43+00:00 |  | 000043178-01 | GRACE | DRUGGAN | EYE SURGICAL & MED CARE | 936834 | WESLEY | HARNISH | 1619979911 | UPPER ARLINGTON SURGERY CENTER | 939327 | 1477558641 | UPPER ARLINGTON SURGERY CENTER | 1477558641 | Out of Network Services | OONS | Pre-Service | PRE |  | UPPER ARLINGTON SURGERY CENTER | 06022017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 05022017 | 06022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170420170 | H2511, H2512 | Age-related nuclear cataract, left eye | ICD10 | 06022017 | 66984 | EXTRCAPSULAR CATARACT RMVL | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 04202017 | 2017-04-20T18:02:18+00:00 |  | 000043178-01 | GRACE | DRUGGAN | EYE SURGICAL & MED CARE | 936834 | WESLEY | HARNISH | 1619979911 | UPPER ARLINGTON SURGERY CENTER | 939327 | 1477558641 | UPPER ARLINGTON SURGERY CENTER | 1477558641 | Out of Network Services | OONS | Pre-Service | PRE |  | UPPER ARLINGTON SURGERY CENTER | 06022017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 05232017 | 06232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170420203 | H2511, H2512 | Age-related nuclear cataract, left eye | ICD10 | 06022017 | 66984 | EXTRCAPSULAR CATARACT RMVL | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 04262017 | 2017-04-26T14:41:44+00:00 |  | 000026846-01 | ROBERT | SCARBOROUGH | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | ATOS MEDICAL INC | 938182 | 1962452755 | ATOS MEDICAL INC | 1962452755 | DME | DME | Pre-Service | PRE |  | ATOS MEDICAL INC | 06022017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04262017 | 04262017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170426129 | Z8521, Z930 | Tracheostomy status | ICD10 | 06022017 | A7507, A7508, A7520 | TRACHEOSTOMY/LARYNGECTOMY TUBE, NON-CUFFED, POLYVINYLCHLORIDE (PVC), SIL | HCPCS | 24, 36, 24 | 24, 36, 24 | Approved, Approved, Approved | 1, 1, 1 | HCPCS | HC |  |  |  |  |  | 0 |
| 05302017 | 2017-05-30T08:58:05+00:00 |  | 000053825-01 | JAMES | JUNE | NEUROSCIENCE CENTER | 911553 | ARIANE | PARK | 1093977431 | NEUROSCIENCE CENTER | 937422 | 1962431817 | NEUROSCIENCE CENTER | 1962431817 | Out of Network Services | OONS | Pre-Service | PRE |  | NEUROSCIENCE CENTER | 06022017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05302017 | 08302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170530093 | G250 | Essential tremor | ICD10 | 06022017 | 99205, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05312017 | 2017-05-31T15:04:31+00:00 |  | 000104605-01 | KATHERINE | TAWROSZA | OH GASTRO GRP INC | 918776 | PRIYA M | ROY | 1043492895 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06022017 | Approved | MediGold Essential Care | Fax | Transplant Evaluation | Outpatient | 05302017 | 08302017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170531111 | K7460 | Unspecified cirrhosis of liver | ICD10 | 06022017 | 99499, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 93, 93 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 05312017 | 2017-05-31T17:16:01+00:00 |  | 000042901-01 | CHRIS | FLETCHER | ADENA MEDICAL GROUP LLC | 900640 | JOHN | UCCI | 1194718049 | FOUNDATION CARE | 916053 | 1205831963 | FOUNDATION CARE | 1205831963 | DME | DME | Pre-Service | PRE |  | FOUNDATION CARE | 06022017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05192017 | 08192017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170601045 | M549 | Dorsalgia, unspecified | ICD10 | 06022017 | L8689 | EXTERNAL RECHARGING SYSTEM FOR IMPLANTED NEUROSTIMULATOR, RE | HCPCS | 1 | 1 | Approved | 93 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 06012017 | 2017-06-01T11:47:59+00:00 |  | 000108586-01 | John | Bradford | CLEVELAND CLINIC FNDN | 936488 |  | CLEVELAND CLINIC FNDN | 1679525919 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Transplant Eval | TRANS | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 06022017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 06012017 | 09012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170601131 | E119, I10 | Essential (primary) hypertension | ICD10 | 06022017 | 50360, 48554, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 93, 93, 93 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 05262017 | 2017-05-26T18:56:37+00:00 | Q18501062 | 000045678-01 | JAMES | FALLER | HEMATOLOGY ONCOLOGY CONS | 933419 | ANITHA S | NALLARI | 1881649879 | HEMATOLOGY ONCOLOGY CONS | 938154 | 1780793901 | HEMATOLOGY ONCOLOGY CONSULTANT | 1780793901 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | HEMATOLOGY ONCOLOGY CONSULTANT | 06022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05302017 | 08282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170602002 | C188 | Malignant neoplasm of overlapping sites of colon | ICD10 | 06022017 | J0640, J9035, J9190 | FLUOROURACIL, 500 MG | HCPCS | 1, 348, 108 | 1, 348, 108 | Approved, Approved, Approved | 91, 91, 91 | HCPCS | HC | J0640: 168 Leucovorin 688mg IV day1 q14 days x12 cycles (12 treatments).  Total billing units = 168; J9035: 348 Bevacizumab 290mg IV day 1 q14 days x12 cycles (12 treatments).  Total billing units = 348; J9190: 108 Fluorouracil 550mg IV push  then 3300mg IV continuous infusion over 46 hours q14 days x12 cycles (12 treatments).  Total billing units = 108 |  |  |  |  | 0 |
| 06012017 | 2017-06-01T12:53:53+00:00 | Q18555032 | 000083295-01 | Diana | Theisen | THORNVILLE FAM MED CTR | 922011 | LARRY I | COWAN | 1023002011 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 06022017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06012017 | 07012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170602021 | K5792 | Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 06022017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05312017 | 2017-05-31T14:00:16+00:00 | Q18545717 | 000016264-01 | RONALD | JARRELL | CEN OH UROLOGY GRP INC | 907066 | BENJAMIN J | MARTIN | 1609893221 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05312017 | 06302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170602077 | C641 | Malignant neoplasm of right kidney, except renal pelvis | ICD10 | 06022017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06012017 | 2017-06-01T11:24:35+00:00 | Q18544523 | 000083140-01 | Wanda | Reed | SEASTERN OH RGNL MED CTR | 923984 | NABIEL | ALKHOURI | 1497728489 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 06022017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05312017 | 06302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170602111 | C7801 | Secondary malignant neoplasm of right lung | ICD10 | 06022017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06012017 | 2017-06-01T16:21:37+00:00 |  | 000113549-01 | Ronald | Bering | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06022017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 06052017 | 09052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170602114 | K1379 | Other lesions of oral mucosa | ICD10 | 06022017 | 92507, 92610, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC | PHONE CALL TO PLACE TO BRANDI C W/OSU PRE-CERT  MESSAGE LEFT ON CONFIDENTIAL VM REQUESTING CLINICAL DOCUMENTATION. CALL BACK NUMBER LEFT AS WELL., RETURN CALL FROM BRANDI  THIS REQUEST IS ADDENDUM TO AUTH X170516118.  NO ADDITIONAL CLINICALS TO BE SENT. |  |  |  |  | 0 |
| 06022017 | 2017-06-02T08:08:27+00:00 |  | 000111520-01 | Eugene | Ramey | OSU INTERNAL MED LLC | 910537 | VERONICA | FRANCO | 1962513796 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06022017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 06262017 | 08262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170602115 | I25811 | Athscl native cor art of transplanted heart w/o ang pctrs | ICD10 | 06022017 | 99214, 93000, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 62, 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 06022017 | 2017-06-02T08:25:42+00:00 |  | 000053909-01 | RICHARD | TURNER | OSU INTERNAL MED LLC | 910383 | RAMI | KAHWASH | 1053515718 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06022017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 06292017 | 07292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170602120 | I25811, I471, I472 | Ventricular tachycardia | ICD10 | 06022017 | 99204, 93000, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 06022017 | 2017-06-02T09:27:50+00:00 |  | 000067121-01 | Robert | Hickman IV | ORTHO TRAUMA SRVS LTD | 909385 | BRUCE G | FRENCH | 1568447696 | ORTHO TRAUMA SRVS LTD | 926774 | 1285622688 | ORTHOPEDIC TRAUMA SERVICES LTD | 1285622688 | Out of Network Services | OONS | Pre-Service | PRE |  | ORTHOPEDIC TRAUMA SERVICES LTD | 06022017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 05242017 | 08242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170602122 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 06022017 | 99024, 99214, 73510, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3 | 3, 3, 3, 3 | Approved, Approved, Approved, Approved | 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
