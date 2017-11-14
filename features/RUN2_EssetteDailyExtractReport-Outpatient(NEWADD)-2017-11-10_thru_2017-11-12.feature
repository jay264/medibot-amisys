Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-11-10_thru_2017-11-12
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-11-10_thru_2017-11-12
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
| 11092017 | 2017-11-09T15:37:05+00:00 |  | 000058423-01 | Margaret | Cox | KUNZ MEDICAL ASSOCIATES | 902836 | JERRY M | KUNZ JR | 1871596668 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11102017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 11092017 | 02092018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171109159 | J984 | Other disorders of lung | ICD10 | 11102017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 11022017 | 2017-11-02T15:07:32+00:00 |  | 000110263-01 | CATHERINE | COOPER | PICKAWAY HEALTH SERVICES | 902481 | DAVID E | MILLER | 1801895594 | PICKAWAY HEALTH SERVICES | 902481 | 1568569903 | DAVID E MILLER | 1801895594 | OP Behavioral Health | OP BH | Pre-Service | PRE | DAVID E | MILLER | 11102017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 11082017 | 02082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171103153 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 11102017 | 90834 | PSYTX PTAND/FAMILY 45 MINUTES | CPT | 1 | 1 | Approved | 93 | CPT | C4 |  |  |  |  |  | 0 |
| 11022017 | 2017-11-02T10:50:39+00:00 |  | 000041901-01 | DONALD | LITTERINI | MOUNT CARMEL HLTH PRVDRS | 935177 | LOWELL ARICK | FORREST | 1912918616 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11102017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 11222017 | 01222018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171103179 | J383 | Other diseases of vocal cords | ICD10 | 11102017 | 92507, 92610, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 62, 62, 62, 62, 62, 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 10312017 | 2017-10-31T11:34:06+00:00 |  | 000089361-01 | Betty | Hollan | KETTERING CARDIOTHORACIC | 901598 | BRUCE H | RANK | 1679551618 | KETTERING CARDIOTHORACIC | 901598 | 1881645828 | BRUCE H RANK | 1679551618 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE | BRUCE H | RANK | 11102017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12072017 | 03072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171101121 | I83811, I83891 | Varicose veins of right low extrm w oth complications | ICD10 | 11102017 | 36478, 37766, 37765 | PHLEB VEINS - EXTREM - to 20 | CPT | 1, 2, 2 | 1, 2, 2 | Approved, Approved, Approved | 91, 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 11032017 | 2017-11-03T14:04:14+00:00 |  | 000114101-01 | Lenora | Bolinger | OSU OTOLARYNGOLOGISTS LL | 916952 | RICARDO L | CARRAU | 1740252691 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11102017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 11142017 | 02142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171106120 | C311, R1312 | Dysphagia, oropharyngeal phase | ICD10 | 11102017 | 99211, 99212, 99213, 99214, 99215, 92507, 92610, 92612, 92526, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC | Care is authorized from 09/12-12/12/2017 on X170827029 |  |  |  |  | 0 |
| 11022017 | 2017-11-02T11:54:52+00:00 |  | 000084058-01 | Phillis | Mallett | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11102017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 11082017 | 02082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171103169 | C4492 | Squamous cell carcinoma of skin, unspecified | ICD10 | 11102017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 11012017 | 2017-11-01T14:07:13+00:00 | Q19678027 | 000072068-01 | Henry | Bensman | ALLIANCE PHYSICIANS INC | 917471 | PHILLIP M | PORCELLI | 1629287677 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 11102017 | Approved | MediGold Essential Care |  | Medical Criteria Met | Outpatient | 11062017 | 12062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171109059 | C719 | Malignant neoplasm of brain, unspecified | ICD10 | 11102017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11032017 | 2017-11-03T09:26:00+00:00 | Q19694531 | 000116054-01 | JERRY | FITCH | GENESIS MEDICAL GRP LLC | 948505 | CLAUDIA J | KIM | 1477843480 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 11102017 | Approved | MediGold Southeast OH Classic Preferred |  | Medical Criteria Met | Outpatient | 11112017 | 12112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171109069 | R159 | Full incontinence of feces | ICD10 | 11102017 | 72193 | CAT SCAN PELVIS C CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11032017 | 2017-11-03T17:15:19+00:00 |  | 000072664-01 | Mary | Hill | OH GASTRO GRP INC | 932482 | JOSEPH D | THOMAS | 1083876288 | CENTRAL OH ENDOSCOPY CENTER | 939381 | 1336218825 | CENTRAL OH ENDOSCOPY CENTER | 1336218825 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | CENTRAL OH ENDOSCOPY CENTER | 11102017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 11082017 | 12082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171106130 | K635 | Polyp of colon | ICD10 | 11102017 | 45378, 45380, 45385 | COLONOSCOPY PAST SP FLEX RMVL LES. | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 | Please see attached documentation.  Partial procedure performed 8/7/2017 |  |  |  |  | 0 |
| 11082017 | 2017-11-08T11:36:26+00:00 | Q19729729 | 000100334-01 | Alice | Moon | MERCY HEALTH PHYSICIANS | 921770 | RICHARD B | FRIES | 1033321567 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL FAIRFIELD | 11102017 | Approved | MediGold Southwest OH Classic Preferred |  | Medical Criteria Met | Outpatient | 11082017 | 12082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171109093 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 11102017 | 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11102017 | 2017-11-10T14:05:02+00:00 |  | 000084205-01 | Herman | Shuttleworth | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Hyperbaric Oxygen | HO | Post-Service | POST |  | BERGER HOSPITAL | 11102017 | Approved | MediGold Essential Care | Phone | Medical Criteria Met | Outpatient | 08012017 | 08312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | X171110027 | R6889 | Other general symptoms and signs | ICD10 | 11102017 | G0277 | HBOT, FULL BODY CHAMBER, 30M | HCPCS | 20 | 20 | Approved | 31 | HCPCS | HC | Email from Billie Johnson in Prov Services:, Hi Lindsey , The provider (Berger Hospital) was informed by one of my Provider Reps that no authorization was needed for G0277 for Hyperbaric Oxygen Treatment.  Therefore  20 visits were provided to the member and now the claim denied for no authorization.  Berger is very upset.  The representative has been educated for the inaccurate information they provider to Berger. |  |  |  |  | 0 |
| 11082017 | 2017-11-08T08:25:28+00:00 | Q19725715 | 000098931-01 | James | Jones | COSHOCTON COUNTY MEM HSP | 945722 | AHMED A | HABIB | 1447230859 | COSHOCTON REGIONAL MEDIC | 951259 | 1013468172 | COSHOCTON REGIONAL MEDICAL 1500 | 1013468172 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | COSHOCTON REGIONAL MEDICAL 1500 | 11102017 | Approved | MediGold Southeast OH Essential Care |  | Medical Criteria Met | Outpatient | 11092017 | 12092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171109112 | R0789 | Other chest pain | ICD10 | 11102017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11092017 | 2017-11-09T13:50:12+00:00 | Q19743077 | 000080085-01 | Joyce | North | MERCY HEALTH PHYSICIANS | 927835 | BRET A | FERREE | 1548601461 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL ANDERSON | 11102017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11092017 | 12092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171110033 | M5030 | Other cervical disc degeneration, unsp cervical region | ICD10 | 11102017 | 72141, 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11092017 | 2017-11-09T08:36:04+00:00 | Q19736983 | 000105891-01 | Mary | Richards | ORACLE PAIN CLINIC INC | 925320 | SAMUEL | ESSANDOH | 1467682948 | PROSCAN IMAGING DUBLIN | 905251 | 1760447924 | DUBLIN DIAGNOSTIC IMAGING | 1760447924 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DUBLIN DIAGNOSTIC IMAGING | 11102017 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 11102017 | 12102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171110036 | M546 | Pain in thoracic spine | ICD10 | 11102017 | 72146, 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09212017 | 2017-09-21T12:17:11+00:00 | Q19366711 | 000114529-01 | Monte | Cook | MARIETTA MEM HSP | 921978 | SRINI | VASAN | 1376541649 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 11102017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 09212017 | 12202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170922041 | C250 | Malignant neoplasm of head of pancreas | ICD10 | 11102017 | 77386 | NTSTY MODUL RAD TX DLVR CPLX | CPT | 28 | 28 | Approved | 91 | CPT | C4 | 77386: 28: 77386 28 |  |  |  |  | 0 |
| 11082017 | 2017-11-08T08:41:46+00:00 | Q19725955 | 000093998-01 | Brenda | Peer | KRAMER, THOMAS W | 937047 | THOMAS W | KRAMER | 1235146465 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 11102017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11092017 | 12092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171110062 | R1084 | Generalized abdominal pain | ICD10 | 11102017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11072017 | 2017-11-07T11:04:09+00:00 |  | 000100451-01 | Eugene | Allen | UNIVERSITY RADIATION ONC | 948092 | DARRION L | MITCHELL | 1801185020 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11102017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 11092017 | 02092018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171107114 | C029 | Malignant neoplasm of tongue, unspecified | ICD10 | 11102017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 11072017 | 2017-11-07T10:28:47+00:00 | Q19716991 | 000076526-01 | Ann | Reed | KRUPADEV, HITNEBAGILU L | 923162 | HITNEBAGILU L | KRUPADEV | 1710900790 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 11102017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11072017 | 12072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171110071 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 11102017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11062017 | 2017-11-06T16:34:53+00:00 | Q19712803 | 000096637-01 | Beulah | Watson | PROFESSIONAL DIAGNOSTIC | 924907 | SANTOSH | MENON | 1134185481 | THE CHRIST HOSPITAL | 924156 | 1932157385 | THE CHRIST HOSPITAL | 1932157385 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE CHRIST HOSPITAL | 11102017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11132017 | 12132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171110081 | G458 | Oth transient cerebral ischemic attacks and related synd | ICD10 | 11102017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11092017 | 2017-11-09T07:12:01+00:00 | Q19736012 | 000099672-01 | Joyce | Knipfer | ORTHO ASSOC OF SW OH INC | 908205 | JOHN S | URSE | 1619979689 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GRANDVIEW MEDICAL CENTER | 11102017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11092017 | 12092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171110096 | M7582 | Other shoulder lesions, left shoulder | ICD10 | 11102017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11092017 | 2017-11-09T08:18:20+00:00 | Q19736687 | 000040345-01 | JUDITH | WEEKS | COPC CENTRAL OHIO PRIMAR | 935494 | SUSANNA E | JOHNSON | 1487640595 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MEMORIAL HOSPITAL OF UNION COUNTY | 11102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11102017 | 12102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171110102 | R938 | Abnormal findings on diagnostic imaging of body structures | ICD10 | 11102017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11102017 | 2017-11-10T15:29:02+00:00 |  | 000098026-01 | Gary | Lustgarten | PATIENT TRANSPORT SRVS O | 912320 |  | COLUMBUS CONNECTION | 0 | PATIENT TRANSPORT SRVS O | 912320 | 1164750451 | COLUMBUS CONNECTION | 0 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | COLUMBUS CONNECTION | 11102017 | Denied | Flexible Choice PPO | Phone | Not Medically Necessary | Outpatient | 11102017 | 11112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X171110084 | R6889 | Other general symptoms and signs | ICD10 | 11102017 | A0425, A0428, A0428 | AMBULANCE SERVICE, BASIC LIFE SUPPORT, NON-EMERGENCY TRANSPORT, (BLS) | HCPCS | 10, 1, 0 | 10, 1, 46 | Approved, Approved, Denied | 0, 0, 0 | HCPCS | HC | Approved for 10 miles of ambulance transport. Deny 46 miles or any additional mileage beyond 10 miles. |  |  |  |  | 0 |
| 11092017 | 2017-11-09T09:18:27+00:00 | Q19737685 | 000010202-01 | BONNIE | HAYNES | OH ONCOLOGY & HEMATOLOGY | 949095 | EMILY W | PURVES | 1891012738 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 11102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11132017 | 12132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171110115 | R1909 | Other intra-abdominal and pelvic swelling, mass and lump | ICD10 | 11102017 | 74183 | MRI ABDOMEN W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11082017 | 2017-11-08T10:33:55+00:00 |  | 000113729-01 | Millie | Corrales | ELECTROPHYSIOLOGY | 908604 | RALPH S | AUGOSTINI | 1104821552 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 11112017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 12032017 | 03032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171108120 | I2510, Z01810 | Encounter for preprocedural cardiovascular examination | ICD10 | 11112017 | 99295, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 11082017 | 2017-11-08T10:37:13+00:00 |  | 000113785-01 | Timothy | Black | OSU UROLOGY LLC | 911712 | AHMAD | SHABSIGH | 1407025042 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11112017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 11282017 | 01282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171108121 | C61 | Malignant neoplasm of prostate | ICD10 | 11112017 | 99201, 99202, 99203, 99204, 99205, 88305, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 11092017 | 2017-11-09T07:44:51+00:00 |  | 000068841-01 | MARY | KNISLEY | OSU HLTH SYSTEM NEUROSUR | 929919 | BARBARA K | CHANGIZI | 1609075175 | NEUROSCIENCE CENTER | 937422 | 1962431817 | NEUROSCIENCE CENTER | 1962431817 | Out of Network Services | OONS | Pre-Service | PRE |  | NEUROSCIENCE CENTER | 11112017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 11092017 | 12092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171109131 | G20 | Parkinson's disease | ICD10 | 11112017 | 95978, 95979, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
