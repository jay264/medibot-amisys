Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-03-20
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-03-20
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
	And in the "certification" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image and save the variable
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
	And in the "authorized_services" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image
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
| 03162017 | 2017-03-16T11:04:58+00:00 |  | 000102273-01 | ANNA | EVANS | FAIRFIELD COMMUNITY HLTH | 915028 | THERESA A | DYAR | 1043404932 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 03202017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03142017 | 04132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170317069 | S066X0A | Traum subrac hem w/o loss of consciousness, init | ICD10 | 03202017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03172017 | 2017-03-17T14:47:32+00:00 |  | 000032949-01 | DANIEL | OLEARY JR | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 03202017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 03212017 | 05312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170317127 | C787, C7A8, R6889 | Other general symptoms and signs | ICD10 | 03202017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 | 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 72, 72, 72, 72, 72, 72, 72, 72, 72, 72 | CPT | C4 | Attempted calling Dr. Jennifer Neville's office for codes and clinical  and they are closed on Fridays, MEMBER NOTIFIED OF APPROVAL OF 3 VISITS W/DR NEVILLE BETWEEN 3/21/17 AND 3/31/17.  HE VERBALIZED UNDERSTANDING.  ADVISED THAT A FAX WOULD BE SENT TO DR NEVILLE ON MONDAY AFTER OBTAINED HER FAX NUMBER. ALSO THAT AN APPROVAL LETTER WAS BEING MAILED THIS EVENING TO HIM.  I VERBALLY GAVE HIM THE AUTHORIZATION NUMBER.  i SPOKE TO HIS WIFE ALONG WITH HIM AS HE PLACED THE CALL ON SPEAKER WIFE., SPOKE TO DR NEVILLE'S OFFICE  OBTAINED FAX NUMBER  AND APPROVAL FAXED TO PROVIDER. |  |  |  |  | 0 |
| 03172017 | 2017-03-17T15:28:14+00:00 |  | 000028125-01 | HAROLD | NEELY | OSU INTERNAL MED LLC | 907311 | DON M | BENSON | 1003862236 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 03202017 | Approved | MediGold Classic Preferred | Fax | Transplant Evaluation | Outpatient | 04042017 | 07042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170317136 | D472 | Monoclonal gammopathy | ICD10 | 03202017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 36415, 85025, 82232, 86140, 80048, 82947, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 83550, 83615, 86334, 82784, 84165, 85610, 83883, 84439, 84443, 84550, 82607, 82306, 85652, 77075, 71020, G0364, 38221, 88313, 88237, 88262, 88305, 88184, 88342, 88307, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 03172017 | 2017-03-17T14:57:09+00:00 |  | 000082368-01 | Janet | Huggins | OSU HLTH SYS ORTHO ONC P | 911790 | THOMAS J | SCHARSCHMIDT | 1639399918 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 03202017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 03292017 | 06292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170317143 | D492 | Neoplasm of unsp behavior of bone, soft tissue, and skin | ICD10 | 03202017 | 20206, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 3 | 1, 3 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 03172017 | 2017-03-17T11:57:55+00:00 | Q17996288 | 000038717-01 | ROBERT | VENTRESCO | MOUNT CARMEL HLTH PRVDRS | 912451 | WILLIAM H | PHILLIPS | 1356343586 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 03202017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03172017 | 04162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170320012 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 03202017 | 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03172017 | 2017-03-17T12:31:46+00:00 |  | 000113394-01 | Julia | Jones | ALLIANCE PHYSICIANS INC | 911154 | CAROLYN M | BAILEY | 1114910338 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 03202017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03182017 | 04172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170320021 | J0101 | Acute recurrent maxillary sinusitis | ICD10 | 03202017 | 70486 | CAT SCAN MAXIOFACIAL WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03172017 | 2017-03-17T10:41:50+00:00 | Q17994908 | 000066094-01 | DAVID | DENIUS | LICKING MEM HLTH PROF | 941939 | EVEN F | WANG | 1871813691 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 03202017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03222017 | 04212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170320024 | D751 | Secondary polycythemia | ICD10 | 03202017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03172017 | 2017-03-17T07:59:50+00:00 |  | 000003650-01 | RICHARD | HOPKINS | CEN OH UROLOGY GRP INC | 936997 | PAUL N | KAUFMAN | 1215908074 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 03202017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03162017 | 09122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170320034 | C61 | Malignant neoplasm of prostate | ICD10 | 03202017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6 Lupron 45mg injection q6months x 1 cycle (1 treatment) Total billing units = 6 |  |  |  |  | 0 |
| 03172017 | 2017-03-17T09:21:15+00:00 | Q17993290 | 000017243-01 | TINA | RIFE | MOUNT CARMEL HLTH PRVDRS | 935805 | MARC L | CARROLL | 1639131329 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 03202017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03172017 | 04162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170320042 | K5669 | Other intestinal obstruction | ICD10 | 03202017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03152017 | 2017-03-15T13:25:30+00:00 |  | 000108877-01 | Donald | Devore | UNIVERSITY OF CINCINNATI | 948810 | JOSEPH T | BREEN | 1427286673 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 03202017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03092017 | 04082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170320052 | H6902 | Patulous Eustachian tube, left ear | ICD10 | 03202017 | 70480 | CAT SCAN ORBIT UNENHANCED | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03172017 | 2017-03-17T08:03:25+00:00 | Q17981424 | 000103049-01 | Heather | Beckley | FAIRFIELD HLTHCARE PROFS | 934808 | KANWALJIT | SINGH | 1679765770 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 03202017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03152017 | 09112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170320064 | C50911 | Malignant neoplasm of unsp site of right female breast | ICD10 | 03202017 | J3489 | ZOLEDRONIC ACID 1MG | HCPCS | 24 | 24 | Approved | 181 | HCPCS | HC | J3489: 24 Zometa 4 mg IV once every 6 months x 1 treatment Total billing units = 24 |  |  |  |  | 0 |
| 03172017 | 2017-03-17T11:57:50+00:00 | Q17984599 | 000040820-01 | CAROLYN | PLOTT | IMMEDIATE HEALTH ASSOC | 907782 | THOMAS J | HURM | 1730121773 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 03202017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03162017 | 04152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170320068 | R911 | Solitary pulmonary nodule | ICD10 | 03202017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03162017 | 2017-03-16T14:00:40+00:00 | Q17988474 | 000003081-01 | JOHN | WINTERS | CANYON MEDICAL CENTER | 935809 | MICHAEL J | KUNSTMANN | 1083655088 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 03202017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03162017 | 04152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170320081 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 03202017 | 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03162017 | 2017-03-16T14:00:29+00:00 | Q17988490 | 000086341-01 | Paul | Newhouse | JACK STANKO MD LLC | 934869 | JOHN | STANKO JR | 1891751319 | JACK STANKO MD LLC | 902266 | 1194924431 | JACK STANKO MD LLC | 1194924431 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | JACK STANKO MD LLC | 03202017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03172017 | 04162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170320083 | R0602 | Shortness of breath | ICD10 | 03202017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03202017 | 2017-03-20T08:52:21+00:00 | Q17987027 | 000052547-01 | ONALEE | ELZEY | ORTHO & NEURO CONSULTS I | 909495 | MICHAEL D | SKEELS | 1922213552 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Initial Review | INIT |  | MOUNT CARMEL EAST HOSPITAL | 03202017 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 03202017 | 04192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170320105 | M5126 | Other intervertebral disc displacement, lumbar region | ICD10 | 03202017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03202017 | 2017-03-20T14:29:29+00:00 |  | 000082199-01 | Paul | Brill | OSU OTOLARYNGOLOGISTS LL | 902915 |  | OSU OTOLARYNGOLOGISTS LLC | 1861449407 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 03202017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 04052017 | 07052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170320118 | C139 | Malignant neoplasm of hypopharynx, unspecified | ICD10 | 03202017 | 92557, 92552, 92553, 92588, 92567, 92550, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 03102017 | 2017-03-10T09:02:44+00:00 |  | 000111750-01 | GLORIA | MANN | FCMH MED & SURG ASSOC | 906134 | DAVID J | GUNDERMAN | 1508861246 | HEARTLAND OF HILLSBORO OH LLC | 940121 | 1184666711 | HEARTLAND OF HILLSBORO OH LLC | 1184666711 | Out of Network Services | OONS | Pre-Service | PRE |  | HEARTLAND OF HILLSBORO OH LLC | 03202017 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Outpatient | 03202017 | 03212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170313007 | M6281 | Muscle weakness (generalized) | ICD10 | 03202017 | 97116, 97112, 97110, 97162, G0293, 97140, 97530 | DYNAMIC ACTIVITES TO IMPROVE FUNCTIONAL PERFORMANCE, EACH 15 MINUTES | CPT | 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0, 0, 0 | CPT | C4 | spoke with Tammy at the facility  member is coming into the SNF for outpatient therapy, Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
