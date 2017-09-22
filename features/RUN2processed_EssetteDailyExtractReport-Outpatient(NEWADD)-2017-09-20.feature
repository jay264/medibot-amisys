Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-09-20
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-09-20
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
| 09142017 | 2017-09-14T15:48:13+00:00 |  | 000108271-01 | DELORES | RAHE | WEST PALM BEACH PHYS GRP | 945991 | ANTOINETTE G | DAVIS | 1538196738 | CLOVERNOOK HEALTH CARE PAVILION | 946240 | 1487636452 | CLOVERNOOK HEALTH CARE PAVILION | 1487636452 | OP Behavioral Health | OP BH | Pre-Service | PRE |  | CLOVERNOOK HEALTH CARE PAVILION | 09202017 | Approved | MediGold Southwest OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 09132017 | 12132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170918001 | F22, F329, F411 | Generalized anxiety disorder | ICD10 | 09202017 | 99307, 99308, 99309, 99310, 99306 | NURSING FACILITY CARE, INIT | CPT | 6, 6, 6, 6, 1 | 6, 6, 6, 6, 1 | Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 08242017 | 2017-08-24T09:15:38+00:00 |  | 000078923-01 | Nancy | Ugie | OSU INTERNAL MED LLC | 950537 | MAYUMI | ENDO | 1285946541 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09202017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 09012017 | 12012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170827002 | C021 | Malignant neoplasm of border of tongue | ICD10 | 09202017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 09132017 | 2017-09-13T16:37:15+00:00 |  | 000082439-01 | Flora | Pluta | MOUNT CARMEL HLTH SYS | 946261 | SEAN E | LINDSEY | 1306147475 | DENTAL FACULTY PRACTICE | 938575 | 1164537684 | DENTAL FACULTY PRACTICE | 1164537684 | Out of Network Services | OONS | Pre-Service | PRE |  | DENTAL FACULTY PRACTICE | 09202017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10102017 | 11102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170915108 | K090 | Developmental odontogenic cysts | ICD10 | 09202017 | 88312, 88305, 88346, 88342, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 09152017 | 2017-09-15T14:04:11+00:00 |  | 000091069-01 | John | Young | OSU INTERNAL MED LLC | 946413 | VALARIE A | POMPEY | 1871598755 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09202017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 09182017 | 12182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170915125 | Z515 | Encounter for palliative care | ICD10 | 09202017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 09152017 | 2017-09-15T10:26:04+00:00 |  | 000029842-01 | CLAUDINE | MCMILLAN | MILLER ARTIFICIAL EYE LAB | 938322 |  | MILLER ARTIFICIAL EYE LAB | 1669495040 | MILLER ARTIFICIAL EYE LAB | 938322 | 1669495040 | MILLER ARTIFICIAL EYE LAB | 1669495040 | DME | DME | Pre-Service | PRE |  | MILLER ARTIFICIAL EYE LAB | 09202017 | Approved | TRINITY HEALTH | Fax | Services Not Available In-Network | Outpatient | 09152017 | 10152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170918069 | Q111, S0572XD | Avulsion of left eye, subsequent encounter | ICD10 | 09202017 | V2624 | POLISHING/RESURFACING OF OCULAR PROSTHESIS | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 02032017 | 2017-02-03T12:29:47+00:00 | Q17654245 | 000082483-01 | Marilyn | Clark | MOUNT CARMEL HLTH PRVDRS | 933631 | SHILPA A | PADIA | 1760799175 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 09202017 | Approved | TRINITY HEALTH | HealthHelp | Medical Criteria Met | Outpatient | 02012017 | 03032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170203194 | C50412 | Malig neoplasm of upper-outer quadrant of left female breast | ICD10 | 09202017 | 77059, C8908 | MAGNETIC RESONANCE IMAGING WITHOUT CONTRAST FOLLOWED BY WITH CONTRAST, B | HCPCS | 0, 1 | 1, 1 | Void, Approved | 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 08302017 | 2017-08-30T08:08:44+00:00 |  | 000046644-01 | KATHERINE | KUHN | ORTHO ASSOC OF ZANESVILL | 933437 | LACIE D | BAKER | 1194126797 | ORTHOPEDIC ONE INC | 927947 | 1396178620 | ORTHOPEDIC ONE INC | 1396178620 | DME | DME | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 09202017 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 09202017 | 09212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170830060 | G5762, M2042 | Other hammer toe(s) (acquired), left foot | ICD10 | 09202017 | L3020 | FOOT, INSERT, REMOVABLE, MOLDED TO PATIENT MODEL, LONGITUDINAL/ | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 09142017 | 2017-09-14T16:53:28+00:00 |  | 000083505-01 | Mark | Caudill | OSU OTOLARYNGOLOGISTS LL | 912050 | MATTHEW | OLD | 1699891242 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09202017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 09292017 | 12292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170915073 | C760 | Malignant neoplasm of head, face and neck | ICD10 | 09202017 | 99211, 99212, 99213, 99214, 99215, 92507, 92610, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 09122017 | 2017-09-12T11:27:19+00:00 |  | 000116882-01 | Judy | Gilligan | MOUNDVIEW OB GYN | 903722 | KAREN L | SMITH-SILONE | 1356320667 | LABORATORY CORPORATION OF AMERICA HO | 923363 | 1750368700 | LABORATORY CORPORATION OF AMERICA HO | 1750368700 | Genetic Testing | OP GEN | Pre-Service | PRE |  | LABORATORY CORPORATION OF AMERICA HO | 09202017 | Denied | MediGold Classic Preferred | Fax | Not Medically Necessary | Outpatient | 09202017 | 09212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170913149 | Z1371, Z8481 | Family history of carrier of genetic disease | ICD10 | 09202017 | 81162, 81211, 81213, 81321, 81405, 81406 | MOPATH PROCEDURE LEVEL 7 | CPT | 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 09152017 | 2017-09-15T10:45:39+00:00 |  | 000043746-01 | NANCY | DAY | KATZ, STEVEN E | 936995 | STEVEN E | KATZ | 1518906866 | OSU COLLEGE OF OPTOMETRY | 909322 | 1710900683 | ROANNE FLOM | 1699764886 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE | ROANNE | FLOM | 09202017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 09152017 | 12152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170915126 | H47012 | Ischemic optic neuropathy, left eye | ICD10 | 09202017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 09192017 | 2017-09-19T08:39:01+00:00 |  | 000011549-01 | RITA | MEREDITH | BEZBATCHENKO, MICHAEL J | 919295 | MICHAEL J | BEZBATCHENKO | 1497879332 | CEN OHIO TMJD & DENTAL SLEEP THERAPY | 930078 | 1952647828 | CEN OHIO TMJD & DENTAL SLEEP THERAPY | 1952647828 | Out of Network Services | OONS | Pre-Service | PRE |  | CEN OHIO TMJD & DENTAL SLEEP THERAPY | 09202017 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 09202017 | 09212017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170919058 | M2652 | Limited mandibular range of motion | ICD10 | 09202017 | E1399, 97110, 97140, 97032, 97035 | APPLICATION OF A MODALITY, ULTRASOUND, | CPT | 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0 | CPT | C4 | Outreach to provider for clinical documentation made., PHONE CALL TO DR BEZBATCHENKO'S OFFICE INQUIRING IF HE IS MEDICARE PARTICIPATING.  SPOKE TO ELLEN AND SHE DOESN'T KNOW.  SHE IS GOING TO HAVE ANN RETURN CALL AFTER 3PM., RECEIVED RETURN CALL FROM ANN W/DR BEZBATCHENKO'S OFFICE  MESSAGE LEFT ON MY CONFIDENTIAL VM ON 9/19/17 AT 14:58.  SHE STATES THAT DR BEZBATCHENKO WAS NOT A MEDICARE PROVIDER FOR TMJ.  HE WAS A MEDICARE PROVIDER ONLY FOR ORAL SLEEP APPLIANCES., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 06142017 | 2017-06-14T07:15:19+00:00 | Q18645583 | 000033007-01 | P | BARTON | MOUNT CARMEL HLTH PRVDRS | 940106 | LAURA M | GRAVELIN | 1780868950 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 09202017 | Approved | TRINITY HEALTH | HealthHelp | Medical Criteria Met | Outpatient | 06262017 | 08252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170615093 | I495 | Sick sinus syndrome | ICD10 | 09202017 | 33208, C1785, C2619, C1779, C1898, 33207, C1786, C2620 | PACEMAKER, SINGLE CHAMBER, NON RATE-RESPONSIVE (IMPLANTABE) | HCPCS | 0, 0, 0, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1 | Void, Void, Void, Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 09132017 | 2017-09-13T10:13:59+00:00 |  | 000072413-01 | George | Kelly | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09202017 | Approved | MediGold Essential Care | Fax | Pending Admission | Outpatient | 09132017 | 12132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170915098 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 09202017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 09132017 | 2017-09-13T06:49:42+00:00 |  | 000065626-01 | FRANK | HOLTER | MID OH ONCOLOGY HEMATOLO | 937410 | ROBERT | RUPERT | 0 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09202017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10032017 | 01032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170913166 | C01, C109 | Malignant neoplasm of oropharynx, unspecified | ICD10 | 09202017 | 99211, 99212, 99213, 99214, 99215, 83735, 84520, 82435, 84132, 82465, 82374, 84295, 82947, 85025, 85370, 85610, 82040, 84075, 84460, 84450, 82248, 82247, 84155, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 09142017 | 2017-09-14T10:48:30+00:00 |  | 000079485-01 | Michael | Jones | FAIRFIELD HLTHCARE PROFS | 947849 | JASON T | WEINGART | 1114188273 | IRHYTHM TECHNOLOGIES INC | 932882 | 1710130539 | IRHYTHM TECHNOLOGIES INC | 1710130539 | DME | DME | Pre-Service | PRE |  | IRHYTHM TECHNOLOGIES INC | 09202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 09202017 | 10202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170915110 | R55 | Syncope and collapse | ICD10 | 09202017 | 0297T | EXT ECG SCAN W/REPORT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09192017 | 2017-09-19T13:44:24+00:00 |  | 000066294-01 | BRENT | REAM | OSU INTERNAL MED LLC | 935274 | AMY L | POPE-HARMON | 1386758142 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 09202017 | Approved | Flexible Choice PPO | Fax | Medical Criteria Met | Outpatient | 09192017 | 10192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170919102 | K4090 | Unil inguinal hernia, w/o obst or gangr, not spcf as recur | ICD10 | 09202017 | 99245, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 09152017 | 2017-09-15T15:29:21+00:00 |  | 000040244-01 | JOYCE | CLARK | OSU INTERNAL MED LLC | 943038 | ALICE S | MIMS | 1699962084 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09202017 | Approved | MediGold Classic Preferred | Fax | Transplant Evaluation | Outpatient | 09152017 | 12152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170915130 | C9200 | Acute myeloblastic leukemia, not having achieved remission | ICD10 | 09202017 | 38204, 86813, 86817, 83735, 85025, 84100, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 85730, 85610, 84550, 83615, 83891, 83909, 83900, 83912, 80053, 82728, 84165, 86645, 86644, 86696, 87801, 86665, 86703, 87340, 86803, 83890, 83894, 83898, 86900, 86901, 86850, 87081, 84703, 88313, 93005, 99211, 36415, 36592, 99213, 82947, 71020, 96413, 96415, 96417, 96409, Q9966, 86880, 80061, 80051, 82784, 80076, 81265, 38240, 36460, 38207, 38205, 81267, 86695, 86687, 86704, 88184, 88185, 36600, 82803, 94729, 94726, 94010, 81371, 93325, 93307, 93320 | DOPPLER ECHOCARDIOGRAPHY, PULSED AND/OR CONTINUOUS WAVE; COMPLETE | CPT | 1, 1, 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 2, 1, 1, 1, 1, 2, 1, 1, 2, 2, 2, 2, 2, 3, 2, 2, 1, 1, 1, 3, 3, 1, 1, 2, 1, 2, 1, 4, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 2, 1, 1, 1, 1, 2, 1, 1, 2, 2, 2, 2, 2, 3, 2, 2, 1, 1, 1, 3, 3, 1, 1, 2, 1, 2, 1, 4, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
