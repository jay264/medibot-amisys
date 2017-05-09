Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-07
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-07
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

	And I input the alternate procedure codes if there are any

	And the test pauses for "4" seconds
	And I press "F8"
	And the test pauses for "4" seconds

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
| 05032017 | 2017-05-03T15:34:38+00:00 |  | 000109475-01 | Myron | Calendine | GENESIS MEDICAL GRP LLC | 912779 | EDUARDO | JORGE | 1689675134 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05052017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 05032017 | 08032017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503300 | C450 | Mesothelioma of pleura | ICD10 | 05052017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 1, 1 | 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05032017 | 2017-05-03T15:22:37+00:00 |  | 000091205-01 | William | Byus | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05052017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05152017 | 08152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503309 | K088, Z8521 | Personal history of malignant neoplasm of larynx | ICD10 | 05052017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 1 | 3, 3, 3, 3, 3, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05032017 | 2017-05-03T16:34:25+00:00 |  | 000006911-01 | JOAN | PASSEN | COPC CENTRAL OHIO PRIMAR | 905277 | SOPHIA B | MEIS | 1568418408 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 05052017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05032017 | 08032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504143 | E042 | Nontoxic multinodular goiter | ICD10 | 05052017 | 99499, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05042017 | 2017-05-04T09:01:03+00:00 |  | 000057684-01 | DENNIS | HARVEY | UNIVERSITY RADIATION ONC | 949435 | JESSICA L | WOBB | 1356653984 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05052017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06012017 | 09012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504150 | C01 | Malignant neoplasm of base of tongue | ICD10 | 05052017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 1 | 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05042017 | 2017-05-04T09:41:24+00:00 |  | 000076580-01 | Barbara | Dahlheimer | CLEVELAND CLINIC FNDN | 911392 | MATTHEW J | EAGLETON | 1619930385 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Out of Network Services | OONS | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 05052017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 08252017 | 09252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504153 | Z8679 | Personal history of other diseases of the circulatory system | ICD10 | 05052017 | 99213, 96360, 96361, 93975, 85023, 93923, 80048, 74020, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32, 32, 32 | HCPCS | HC | Iris from CCF called to say dos is 082517. |  |  |  |  | 0 |
| 05042017 | 2017-05-04T10:56:49+00:00 |  | 000072345-01 | Joyce | Glick | ORTHO TRAUMA SRVS LTD | 909385 | BRUCE G | FRENCH | 1568447696 | ORTHO TRAUMA SRVS LTD | 926774 | 1285622688 | ORTHOPEDIC TRAUMA SERVICES LTD | 1285622688 | Out of Network Services | OONS | Pre-Service | PRE |  | ORTHOPEDIC TRAUMA SERVICES LTD | 05052017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04242017 | 07242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504183 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 05052017 | 99024, 99214, 73550, 73510, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 1 | 3, 3, 3, 3, 1 | Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 05042017 | 2017-05-04T11:11:50+00:00 |  | 000089686-01 | Joseph | Miller | FAIRFIELD HLTHCARE PROFS | 937141 | MICHAEL J | MARTIN | 1083662951 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 05052017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05302017 | 08302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504184 | G20 | Parkinson's disease | ICD10 | 05052017 | 99211, 99212, 99213, 99214, 99215, 99499, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 1 | 3, 3, 3, 3, 3, 3, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05042017 | 2017-05-04T13:12:06+00:00 |  | 000114300-01 | Sharen | Kensler | OSU INTERNAL MED LLC | 928059 | DAVID A | LIEBNER | 1174753537 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05052017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 05042017 | 08042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504197 | C4921, Z0389 | Encntr for obs for oth suspected diseases and cond ruled out | ICD10 | 05052017 | 82785, 82784, 88184, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 82565, 84520, 82374, 82435, 84295, 84132, 36415, 85025, 80048, 85652, 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 05042017 | 2017-05-04T14:59:59+00:00 |  | 000067295-01 | JAMES | WILSON | COPC CENTRAL OHIO PRIMAR | 905988 | RANDOLPH O | SCHULTZ | 1215991518 | REHAB MEDICAL OF COLUMBUS | 914581 | 1851320774 | REHAB MEDICAL OF COLUMBUS | 1851320774 | DME | DME | Pre-Service | PRE |  | REHAB MEDICAL OF COLUMBUS | 05052017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 05042017 | 06042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170505001 | I10, R0602, S39012A | Strain of muscle, fascia and tendon of lower back, init | ICD10 | 05052017 | K0800, K0801 | POV group 1 hd 301-450 lbs | HCPCS | 0, 1 | 1, 1 | Withdrawal, Approved | 397, 397 | HCPCS | HC | Called Zeth at Rehab Medical(855-386-3124) to clarify which POV is being requested as K0800 is listed on auth request but K0801 is listed on perscription form.  Also no battery packs requested  Left message and await a call back, Seth from Rehab Medical Called back and stated it was for K0801 not K0800 He withdrew the K0800.  He stated that there is no need for a code for the batteries as it is all inclussive |  |  |  |  | 0 |
| 05052017 | 2017-05-05T09:31:36+00:00 |  | 000010871-01 | HAROLD | BEEBE | JOINT IMPLANT SURGEONS O | 943931 | EVGENY | KRYNETSKIY | 1528226644 | JOINT IMPLANT SURGEONS O | 943931 | 1508872839 | EVGENY KRYNETSKIY | 1528226644 | Out of Network Services | OONS | Pre-Service | PRE | EVGENY | KRYNETSKIY | 05052017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04172017 | 07172017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170505005 | M25551, M25552 | Pain in left hip | ICD10 | 05052017 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 3 | 3 | Approved | 92 | CPT | C4 | P/c to Dr. Krynetskiy office sw Megan N. let her know I need the ICD10 code for the pt and the CPT codes.  She said there are a lot of CPT codes she will refax the form. I asked her to also send the clinical.  She said the member came in through ER and then had emergency SX. She will have to see if they can release hospital records since pt has not been seen in office yet. |  |  |  |  | 0 |
| 05042017 | 2017-05-04T09:29:31+00:00 | Q18349443 | 000097726-01 | Marjorie | Kuntz | ALLIANCE PHYSICIANS INC | 940214 | BARBARA L | HANEY | 1528466075 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 05052017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05042017 | 06032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170505014 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 05052017 | 74174, 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05042017 | 2017-05-04T13:29:30+00:00 | Q18298724 | 000055537-01 | Tommy | Whitt | WESTERN MEDICINE LLC | 901464 | JACOB T | DEAN | 1932172467 | BEAVERCREEK MEDICAL CENTER | 919117 | 1760764849 | BEAVERCREEK MEDICAL CENTER | 1760764849 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BEAVERCREEK MEDICAL CENTER | 05052017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04282017 | 05282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170505020 | M4726 | Other spondylosis with radiculopathy, lumbar region | ICD10 | 05052017 | 72131 | CAT SCAN LUMBAR SPINE WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05032017 | 2017-05-03T14:15:21+00:00 | Q18295227 | 000053308-01 | IRMA | LEWIS | DRANKWALTER, TIMOTHY P | 935601 | TIMOTHY P | DRANKWALTER | 1841304102 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BERGER HOSPITAL | 05052017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04272017 | 05272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170505047 | M26601 | RIGHT TEMPOROMANDIBULAR JOINT DISORDER, UNSPECIFIED | ICD10 | 05052017 | 70336 | MRI-TEMPOROMANDIBULAR JOINT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05042017 | 2017-05-04T12:19:34+00:00 | Q18336715 | 000101731-01 | Debra | Preston | MOUNT CARMEL HLTH PRVDRS | 942767 | KYLE | PFAHL | 1801096789 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05052017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05092017 | 07082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170505063 | R079 | Chest pain, unspecified | ICD10 | 05052017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 05042017 | 2017-05-04T08:24:39+00:00 | Q18348325 | 000080963-01 | Carole | Darling | COPC CENTRAL OHIO PRIMAR | 935058 | RONALD D | WINLAND | 1588641716 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 05052017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05042017 | 06032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170505125 | F17200 | Nicotine dependence, unspecified, uncomplicated | ICD10 | 05052017 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 05042017 | 2017-05-04T13:03:35+00:00 | Q18353838 | 000087451-01 | William | Short | DAYTON PHYSICIANS LLC | 909670 | KETAN S | SHAH | 1083664023 | DAYTON PHYSICIANS LLC | 904470 | 1902844947 | DAYTON PHYSICIANS LLC | 1902844947 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DAYTON PHYSICIANS LLC | 05052017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05042017 | 06032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170505136 | R1907 | Generalized intra-abd and pelvic swelling, mass and lump | ICD10 | 05052017 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05052017 | 2017-05-05T13:46:09+00:00 | Q18364259 | 000087358-01 | John | Zweering | KNOX COMMUNITY HSP PHYS | 908281 | THOMAS D | MCKINLEY | 1639250830 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Radiology (HH) | OP RAD | Initial Review | INIT |  | KNOX COMMUNITY HOSPITAL | 05052017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05052017 | 06042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170505149 | R17 | Unspecified jaundice | ICD10 | 05052017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05052017 | 2017-05-05T15:03:40+00:00 |  | 000070869-01 | Charlotte | Barker | CEN OHIO NEURO OPHTHALMO | 936377 | AVROM D | EPSTEIN | 1831118363 | CEN OHIO NEURO OPHTHALMO | 936377 | 1396822334 | AVROM D EPSTEIN | 1831118363 | Out of Network Services | OONS | Pre-Service | PRE | AVROM D | EPSTEIN | 05052017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 05052017 | 08052017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170505176 | H532 | Diplopia | ICD10 | 05052017 | 99499, 99214 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3 | 3, 3 | Approved, Approved | 93, 93 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 03202017 | 2017-03-20T14:30:23+00:00 |  | 000044370-01 | TERRY | SELBY | MEDICAL SOLUTIONS SUPPLI | 949666 |  | MEDICAL SOLUTIONS SUPPLIER | 1760459010 | MEDICAL SOLUTIONS SUPPLI | 949666 | 1760459010 | MEDICAL SOLUTIONS SUPPLIER | 1760459010 | DME | DME | Pre-Service | PRE |  | MEDICAL SOLUTIONS SUPPLIER | 05052017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 05052017 | 05062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170321102 | I890 | Lymphedema, not elsewhere classified | ICD10 | 05052017 | E0651, E0667 | SEGMENTAL PNEUMATIC APPLIANCE FOR USE WITH PNEUMATIC COMPRESSOR, FULL | HCPCS | 0, 0 | 1, 2 | Denied, Denied | 0, 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 05012017 | 2017-05-01T17:26:58+00:00 |  | 000071851-01 | Julia | Straight | OH MEDICAL TRANSPORT LLC | 922193 |  | OH MEDICAL TRANSPORT LLC | 1316267297 | OH MEDICAL TRANSPORT LLC | 922193 | 1316267297 | OH MEDICAL TRANSPORT LLC | 1316267297 | Out of Network Services | OONS | Pre-Service | PRE |  | OH MEDICAL TRANSPORT LLC | 05052017 | Denied | MediGold Essential Care | Fax | Not a Covered Benefit (PA) | Outpatient | 05052017 | 05062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170502011 | D649 | Anemia, unspecified | ICD10 | 05052017 | A0426, A0425 | GROUND MILEAGE, PER STATUTE MILE | HCPCS | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | HCPCS | HC | As per phone call with Casey provider informed additional clinical documentation needed to support medical necessity., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 05032017 | 2017-05-03T12:51:15+00:00 |  | 000007513-01 | BETTIE | WOLFINGER | CEN OHIO GERIATRICS LLC | 934216 | CARYN | GORBY | 1144626433 | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | DME | DME | Pre-Service | PRE |  | CORNERSTONE MEDICAL SRVS COLS LLC | 05052017 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 05052017 | 05062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170503295 | R260, S81812A, S82811A | Torus fracture of upper end of right fibula, init | ICD10 | 05052017 | E1399 | DURABLE MEDICAL EQUIPMENT, MISCELLANEOUS | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 05042017 | 2017-05-04T12:18:12+00:00 |  | 000073719-01 | Donna | Welcome | OH ONCOLOGY & HEMATOLOGY | 934906 | P KOTHAI | SUNDARAM | 1538127238 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05052017 | Denied | MediGold Essential Care | Fax | Services Available In-Network | Outpatient | 05052017 | 05062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170504187 | C50412 | Malig neoplasm of upper-outer quadrant of left female breast | ICD10 | 05052017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305 | SURGICAL PATH LARGE SPEC/MANY SMALL | CPT | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 05042017 | 2017-05-04T16:21:41+00:00 |  | 000102060-01 | Bruce | Johnson | THE UROLOGY GROUP | 921282 | PHILIP J | BUFFINGTON | 1114967973 | THE UROLOGY GROUP | 921282 | 1033302054 | PHILIP J BUFFINGTON | 1114967973 | Radiology (HH) | OP RAD | Initial Review | INIT | PHILIP J | BUFFINGTON | 05052017 | Denied | MediGold Southwest OH Essential Care | HealthHelp | Criteria Not Met | Outpatient | 05052017 | 05062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Denied | X170504199 | C61 | Malignant neoplasm of prostate | ICD10 | 05052017 | J0897 | Denosumab injection | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
