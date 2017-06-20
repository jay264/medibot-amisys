Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-15
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-15
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
| 02132017 | 2017-02-13T10:28:21+00:00 |  | 000074066-01 | Harlan | Hays | FIUMERA, CHARLES C | 918795 | CHARLES C | FIUMERA | 1851326524 | FIUMERA, CHARLES C | 918795 | 1851326524 | CHARLES C FIUMERA | 1851326524 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE | CHARLES C | FIUMERA | 06152017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02132017 | 05132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170213018 | F0632 | Mood disord d/t physiol cond w major depressive-like epsd | ICD10 | 06152017 | 90791, 90837 | PSYTX PTAND/FAMILY 60 MINUTES | CPT | 3, 3 | 3, 3 | Approved, Approved | 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
| 06062017 | 2017-06-06T09:22:35+00:00 |  | 000069585-01 | PAUL | VITTITOW | OSU INTERNAL MED LLC | 911166 | MAHMOUD | HOUMSSE | 1780630129 | OSU INTERNAL MED LLC | 937566 | 1740231448 | OSU INTERNAL MEDICINE LLC | 1740231448 | Transplant Eval | TRANS | Pre-Service | PRE |  | OSU INTERNAL MEDICINE LLC | 06142017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07062017 | 10062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170606014 | B9781, I480, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 06142017 | 99214, 93000, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3 | 3, 3, 3 | Approved, Approved, Approved | 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06062017 | 2017-06-06T17:50:24+00:00 |  | 000093789-01 | Leila | Hollett | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06142017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06122017 | 07122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170607007 | K7460, K7581 | Nonalcoholic steatohepatitis (NASH) | ICD10 | 06142017 | 49083, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 06072017 | 2017-06-07T09:42:33+00:00 |  | 000049849-01 | JUDITH | TIMSON | CLEVELAND CLINIC FNDN | 911668 | MARAN | THAMILARASAN | 1851492755 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Out of Network Services | OONS | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 06142017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06092017 | 09092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170607012 | I10, I272 | Other secondary pulmonary hypertension | ICD10 | 06142017 | 93010, 93306, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06072017 | 2017-06-07T15:18:43+00:00 |  | 000100451-01 | Eugene | Allen | OSU OTOLARYNGOLOGISTS LL | 940525 | JAMES W | ROCCO | 1972594091 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06152017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06082017 | 07082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170607146 | C029 | Malignant neoplasm of tongue, unspecified | ICD10 | 06152017 | 92611, 74220, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 06072017 | 2017-06-07T16:24:34+00:00 |  | 000069585-01 | PAUL | VITTITOW | OSU INTERNAL MED LLC | 935274 | AMY L | POPE-HARMON | 1386758142 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06152017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06132017 | 09132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170608002 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 06152017 | G0424, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3 | 3, 3 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T07:53:08+00:00 |  | 000097196-01 | Richard | Kulp | UNIVERSITY RADIATION ONC | 919516 | VIRGINIA M | DIAVOLITSIS | 1275799181 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06152017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06092017 | 09092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170608007 | C321 | Malignant neoplasm of supraglottis | ICD10 | 06152017 | 92507, 92610, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T10:58:02+00:00 |  | 000104972-01 | Delores | Ellison | OSU SURGERY LLC | 908443 | AMER | RAJAB | 1700831864 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06152017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 06152017 | 08152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170608084 | Z01818, Z5181 | Encounter for therapeutic drug level monitoring | ICD10 | 06152017 | 93306, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T12:16:04+00:00 |  | 000109076-01 | Gary | Lowry | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06152017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 06132017 | 08132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170608146 | C8330 | Diffuse large B-cell lymphoma, unspecified site | ICD10 | 06152017 | 73560, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T12:59:44+00:00 |  | 000100451-01 | Eugene | Allen | OSU HLTH SYSTEM NEUROSUR | 940986 | TIFFANY L | KESSLING | 1386801231 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06152017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06132017 | 09132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170608148 | C029 | Malignant neoplasm of tongue, unspecified | ICD10 | 06152017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T16:06:13+00:00 |  | 000087336-01 | William | Ford | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06152017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 06122017 | 07122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170609020 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 06152017 | 36558, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 06092017 | 2017-06-09T14:01:02+00:00 | Q18614890 | 000070376-01 | Thomas | Joyce | ROBERT D RUPERT JR MD IN | 906637 |  | ROBERT D RUPERT JR MD INC | 1437395183 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Initial Review | INIT |  | THE OH STATE UNIVERSITY HOSPITAL | 06152017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06092017 | 12062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170609126 | C109 | Malignant neoplasm of oropharynx, unspecified | ICD10 | 06152017 | J9055 | INJECTION, CETUXIMAB, 10 MG | HCPCS | 8 | 8 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 06092017 | 2017-06-09T14:21:24+00:00 | Q18615958 | 000118672-01 | James | Fightmaster | ALLIANCE PHYSICIANS INC | 913338 | PRIYA G | JAIN | 1912093360 | GRANDVIEW HOSPITAL & SOU | 902369 | 1053339507 | DAYTON OSTEOPATHIC HOSPITAL 1500 | 0 | Radiology (HH) | OP RAD | Initial Review | INIT |  | DAYTON OSTEOPATHIC HOSPITAL 1500 | 06152017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06092017 | 12062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170609135 | C20 | Malignant neoplasm of rectum | ICD10 | 06152017 | J9263, J8520, J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 8, 8, 8 | 8, 8, 8 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 06132017 | 2017-06-13T15:26:02+00:00 |  | 000100967-01 | Thomas | Woodford | RGNL CARDIOVASC AND MED | 931061 | GLEN R | MISKE | 1316197080 | TRINITY MEDICAL CENTER | 936496 | 1285715144 | TRINITY MEDICAL CENTER | 1285715144 | Radiology (HH) | OP RAD | Initial Review | INIT |  | TRINITY MEDICAL CENTER | 06152017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Services Not Available In-Network | Outpatient | 06142017 | 09142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170613131 | I4891 | Unspecified atrial fibrillation | ICD10 | 06152017 | 93656 | TX ATRIAL FIB PULM VEIN ISOL | CPT | 1 | 1 | Approved | 93 | CPT | C4 | CALLED TO REQUEST CLINICALS BUT THE OFFICE WAS CLOSED 06/13/17 @ 16:13:47, CALLED AND LEFT A VOICEMAIL ON LISA THE RECEPTIONISTS PHONE REQUESTING CLINICALS. I GAVE MY NAME NUMBER AND MBRS INFORMATION. ON 06/14/17 @ 11:01:14, ON 06/14/17 @ 15:18:00 LEFT V/M REQUESTING CLINICALS (LISA) AT 17407924220. LEFT MY NAME NUMBER AND MBRS INFORMATION AND FAX NUMBER |  |  |  |  | 0 |
| 06132017 | 2017-06-13T09:44:02+00:00 | Q18635620 | 000083140-01 | Wanda | Reed | SEASTERN OH RGNL MED CTR | 923984 | NABIEL | ALKHOURI | 1497728489 | SEASTERN OH RGNL MED CTR | 923983 | 1922138981 | SOUTHEASTERN OH RGNL MED CTR 1500 | 0 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | SOUTHEASTERN OH RGNL MED CTR 1500 | 06142017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06142017 | 12112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170614018 | C187 | Malignant neoplasm of sigmoid colon | ICD10 | 06142017 | J9206, J1447, J2469, J1453, J0640, J9190 | FLUOROURACIL, 500 MG | HCPCS | 216, 2100, 120, 1800, 192, 144 | 216, 2100, 120, 1800, 192, 144 | Approved, Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 06122017 | 2017-06-12T14:51:20+00:00 | Q18631829 | 000113493-01 | Lois | Kerwin | HEARTLAND CARDIOLOGY LLC | 936383 | DANIEL J | EVANS | 1760477640 | HEARTLAND CARDIOLOGY LLC | 913080 | 1538488564 | HEARTLAND CARDIOLOGY LLC | 1538488564 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | HEARTLAND CARDIOLOGY LLC | 06142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06142017 | 07142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170614075 | I25119 | Athscl heart disease of native cor art w unsp ang pctrs | ICD10 | 06142017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06132017 | 2017-06-13T17:14:57+00:00 |  | 000108586-01 | John | Bradford | CLEVELAND CLINIC FNDN | 927352 | RICHARD A | FATICA | 1447366174 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Transplant Eval | TRANS | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 06152017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 06152017 | 12152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170614102 | E119, I10 | Essential (primary) hypertension | ICD10 | 06152017 | 99205, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3 | 3, 3 | Approved, Approved | 184, 184 | HCPCS | HC |  |  |  |  |  | 0 |
| 06142017 | 2017-06-14T13:52:08+00:00 |  | 000089370-01 | Dorothy | Durham | LEGACY PSYCHOLOGICAL SRV | 927260 | JEROME A | GABIS | 1992726327 | COMPREHENSIVE GERIATRIC | 915497 | 1598945230 | SUSAN E BERNER | 1952384505 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE | SUSAN E | BERNER | 06152017 | Approved | MediGold Southwest OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 06142017 | 09142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170614153 | F419 | Anxiety disorder, unspecified | ICD10 | 06152017 | 90791 | PSYCH DIAGNOSTIC EVALUATION | CPT | 3 | 3 | Approved | 93 | CPT | C4 |  |  |  |  |  | 0 |
| 06142017 | 2017-06-14T11:41:50+00:00 | Q18650165 | 000073481-01 | James | Cheadle | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06152017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06162017 | 07162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170615010 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 06152017 | 75574, 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06142017 | 2017-06-14T13:50:33+00:00 | Q18651994 | 000030614-01 | MARY | THOMPSON | OH ONCOLOGY & HEMATOLOGY | 936113 | MARK H | KNAPP | 1952359549 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 06152017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06282017 | 07282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170615012 | C50911 | Malignant neoplasm of unsp site of right female breast | ICD10 | 06152017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06142017 | 2017-06-14T09:50:50+00:00 | Q18647901 | 000094451-01 | Tanya | Jasinski | UNIVERSITY OF CINCINNATI | 948578 | HAREEPRASAD R | VONGOORU | 1407045693 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | UNKNOWN PROVIDER | 06152017 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 06202017 | 08192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170615029 | Z941 | Heart transplant status | ICD10 | 06152017 | 93451 | RIGHT HEART CATH | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 06142017 | 2017-06-14T09:55:29+00:00 | Q18648033 | 000094451-01 | Tanya | Jasinski | UNIVERSITY OF CINCINNATI | 948578 | HAREEPRASAD R | VONGOORU | 1407045693 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | UNKNOWN PROVIDER | 06152017 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 07052017 | 09032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170615031 | Z941 | Heart transplant status | ICD10 | 06152017 | 93451 | RIGHT HEART CATH | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 06142017 | 2017-06-14T08:23:15+00:00 | Q18623648 | 000118601-01 | Dottie | Baver | DAYTON EYE ASSOC INC | 908860 | WALTER C | HARTEL | 1194744698 | GRANDVIEW HOSPITAL & SOU | 902369 | 1053339507 | DAYTON OSTEOPATHIC HOSPITAL 1500 | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DAYTON OSTEOPATHIC HOSPITAL 1500 | 06152017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06142017 | 07142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170615057 | H542 | Low vision, both eyes | ICD10 | 06152017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06132017 | 2017-06-13T15:39:28+00:00 | Q18644060 | 000083403-01 | Darryl | Hackley | MOUNT CARMEL HLTH PRVDRS | 945205 | DANAMARIE E | AMINIAN | 1407007818 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 06152017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06142017 | 07142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170615081 | M4806 | Spinal stenosis, lumbar region | ICD10 | 06152017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06132017 | 2017-06-13T17:49:40+00:00 | Q18645270 | 000079088-01 | Priscilla | Clifton | CARDIOLOGISTS OF GREENE | 904143 | ASHRAF | KORAYM | 1760471692 | CARDIOLOGISTS OF GREENE | 918558 | 1619146859 | CARDIOLOGISTS OF GREENE COUNTY LLC | 1619146859 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CARDIOLOGISTS OF GREENE COUNTY LLC | 06152017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06142017 | 07142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170615090 | R072 | Precordial pain | ICD10 | 06152017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06142017 | 2017-06-14T08:24:13+00:00 | Q18646288 | 000088638-01 | Sue | Sarver | WESTERN MEDICINE LLC | 904783 | AARON T | GROTH | 1508809021 | CRYSTAL CLEAR IMAGING | 937806 | 1346220662 | CRYSTAL CLEAR IMAGING | 1346220662 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CRYSTAL CLEAR IMAGING | 06152017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06152017 | 07152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170615100 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 06152017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06152017 | 2017-06-15T12:08:47+00:00 |  | 000026950-01 | JODI | HOOVER | CLEVELAND CLINIC FNDN | 910143 | EDWARD G | SOLTESZ | 1629015730 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Out of Network Services | OONS | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 06152017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06152017 | 09152017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170615115 | I719 | Aortic aneurysm of unspecified site, without rupture | ICD10 | 06152017 | G0463, 99203, 99204, 99205, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 1, 1, 1, 2, 2, 2 | 3, 1, 1, 1, 2, 2, 2 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 06152017 | 2017-06-15T14:24:23+00:00 | Q18659341 | 000038960-01 | RUSSELL | TUCKER | ADENA MEDICAL GROUP LLC | 926904 | WAEL | HAIDAR | 1730265695 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Initial Review | INIT |  | ADENA REGIONAL MEDICAL CENTER | 06152017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06262017 | 07262017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170615121 | K6812 | Psoas muscle abscess | ICD10 | 06152017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06142017 | 2017-06-14T10:00:25+00:00 |  | 000033348-01 | GARY | HERDMAN | ADENA MEDICAL GROUP LLC | 930154 | ALICIA M | TERANDO | 1396877080 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06152017 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Outpatient | 06152017 | 06162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170614127 | C4359, C774, C779 | Secondary and unsp malignant neoplasm of lymph node, unsp | ICD10 | 06152017 | 99211, 99212, 99213, 99214, 99215, 85025, 83615, 80053 | COMPREHEN METABOLIC PANEL | CPT | 0, 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0, 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 06142017 | 2017-06-14T16:17:01+00:00 |  | 000030912-01 | GUIDO | EPELBAUM | COPC CENTRAL OHIO PRIMAR | 904354 | ASIF Q | QAZI | 1134185788 | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | DME | DME | Pre-Service | PRE |  | CORNERSTONE MEDICAL SRVS COLS LLC | 06152017 | Denied | MediGold Classic Preferred | Member | Not a Covered Benefit (PA) | Outpatient | 06152017 | 06162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170614160 | R32 | Unspecified urinary incontinence | ICD10 | 06152017 | T4521 | ADULT SIZED DISPOSABLE INCONTINENCE PRODUCT, BRIEF/DIAPER, S | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 06142017 | 2017-06-14T16:16:42+00:00 |  | 000036587-01 | WANDA JUNE | BRALLEY | N8 FAMILY CHIRO INC | 924462 | TODD A | HAMILTON | 1760499982 | N8 FAMILY CHIRO INC | 924462 | 1215943881 | TODD A HAMILTON | 1760499982 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE | TODD A | HAMILTON | 06152017 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 06152017 | 06162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170614162 | M5011, M9901 | Segmental and somatic dysfunction of cervical region | ICD10 | 06152017 | 99203 | OFFICE CALL - NEW PATIENT | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
