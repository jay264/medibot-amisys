Feature: Process Essette Extract RUN2EssetteDailyExtractReport-Outpatient(NEWADD)-2017-09-22-to-2017-09-24
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: RUN2EssetteDailyExtractReport-Outpatient(NEWADD)-2017-09-22-to-2017-09-24
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
| 09202017 | 2017-09-20T14:03:00+00:00 | Q19358075 | 000077499-01 | Zelda | Waites | GREENFIELD AREA MED CTR | 910661 | HAVAL M | SAADLLA | 1659458156 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 09222017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09202017 | 10202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170922072 | J189 | Pneumonia, unspecified organism | ICD10 | 09222017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09212017 | 2017-09-21T13:11:00+00:00 | Q19367646 | 000015916-01 | SALLY | RUNKLE | MOUNT CARMEL HLTH PRVDRS | 925886 | DYLAN J | WIRTZ | 1982895975 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 09222017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09252017 | 10252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170922027 | I712 | Thoracic aortic aneurysm, without rupture | ICD10 | 09222017 | 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09132017 | 2017-09-13T10:24:00+00:00 | Q19299719 | 000102662-01 | Judith | Broughton | MERCY HEALTH PHYSICIANS | 920971 | SURESH | NAYAK | 1730184946 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL ANDERSON | 09242017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10172017 | 11162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170914049 | M25562 | Pain in left knee | ICD10 | 09242017 | 73700 | CAT SCAN LOWER EXTREMITY WO CONTRST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09202017 | 2017-09-20T14:57:18+00:00 |  | 000072413-01 | George | Kelly | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09222017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 09202017 | 10202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921275 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 09222017 | 92507, 92610, 92612, 92526, 92526, 92597, 31579, 31575, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 31, 31, 31, 31, 31, 31, 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 09212017 | 2017-09-21T12:59:00+00:00 | Q19367435 | 000114109-01 | Margaret | Bretz | ADENA MEDICAL GROUP LLC | 934344 | TRI | LE | 1053671743 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 09222017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 09212017 | 10212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170922019 | R51 | Headache | ICD10 | 09222017 | 70551, 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09122017 | 2017-09-12T07:52:00+00:00 | Q19285918 | 000089461-01 | Marlin | Maddy | SPRINGFIELD HEMATOLOGY & | 908018 | FILIX | KENCANA | 1790709301 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 09242017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 09132017 | 03122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170914114 | C4359 | Malignant melanoma of other part of trunk | ICD10 | 09242017 | J9299 | INJECTION, NIVOLUMAB | HCPCS | 2880 | 2880 | Approved | 181 | HCPCS | HC | J9299: 2880: Nivolumab 240 mg  IV  day 1  every 14 days  12 cycles |  |  |  |  | 0 |
| 08072017 | 2017-08-07T14:34:36+00:00 | Q19001252 | 000111929-01 | Larry | Gibson | S ZANESVILLE FAM MED CTR | 922007 | BRADLEY A | COLMAN | 1972593176 | GENESIS HEALTHCARE SYSTEM DME | 924099 | 1972640332 | GENESIS HEALTHCARE SYSTEM DME | 1972640332 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM DME | 09222017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08022017 | 09012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170809009 | R410 | Disorientation, unspecified | ICD10 | 09222017 | 70450, 74150 | CAT SCAN ABDOMEN WO IV CONTRAST | CPT | 0, 1 | 1, 1 | Void, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09182017 | 2017-09-18T16:45:10+00:00 |  | 000116120-01 | Beverly | Sealock | MORGAN COUNTY FAM PRCT | 931390 | KATHLEEN | MONTGOMERY | 1629200902 | MDINR LLC | 928912 | 1336420140 | MDINR LLC | 1336420140 | DME | DME | Pre-Service | PRE |  | MDINR LLC | 09222017 | Denied | MediGold Southeast OH Classic Preferred | Fax | Services Available In-Network | Outpatient | 09222017 | 09232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170919014 | I4891 | Unspecified atrial fibrillation | ICD10 | 09222017 | G0248, G0249 | PROVISION OF TEST MATERIALS AND EQUIPMENT FOR HOME INR MONITORING TO PAT | HCPCS | 0, 0 | 1, 12 | Denied, Denied | 0, 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 09122017 | 2017-09-12T14:47:00+00:00 | Q19294549 | 000061731-01 | James | Lott | GREENFIELD AREA MED CTR | 910661 | HAVAL M | SAADLLA | 1659458156 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 09242017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09122017 | 10122017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170914080 | R911 | Solitary pulmonary nodule | ICD10 | 09242017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09142017 | 2017-09-14T12:06:00+00:00 | Q19312697 | 000111193-01 | Jeffrey | Debord | AMERICAN HLTH NETWORK OF | 905559 | MEGAN E | FRANK | 1821290313 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 09222017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 09142017 | 10142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170922017 | M25551 | Pain in right hip | ICD10 | 09222017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09122017 | 2017-09-12T10:23:00+00:00 | Q19288667 | 000085183-01 | Harold | Knasel | SPRINGFIELD UROLOGY LLC | 903102 | ANANTH | ANNAMRAJU | 1003981168 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 09242017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09122017 | 10122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170913115 | C61 | Malignant neoplasm of prostate | ICD10 | 09242017 | 72197 | MRI PELVIS W/O & W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08292017 | 2017-08-29T08:31:16+00:00 | Q19194543 | 000011326-01 | DARRELL | SHULTZ | SCIOTO VALLEY UROLOGY IN | 936922 | GEORGE T | HO | 1255390852 | SCIOTO VALLEY UROLOGY IN | 938633 | 1346254976 | SCIOTO VALLEY UROLOGY INC | 1346254976 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | SCIOTO VALLEY UROLOGY INC | 09222017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09132017 | 03122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170830025 | D090 | Carcinoma in situ of bladder | ICD10 | 09222017 | J9031 | BCG (INTRAVESICAL) PER INSTALLATION | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9031: 6 (BCG) Bacillus Calmette-Guerin 81 mg  intravesically  day 1  every 7 days  6 cycles |  |  |  |  | 0 |
| 09182017 | 2017-09-18T12:20:29+00:00 |  | 000100570-01 | Bernice | Dreher | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | COSHOCTON SPRINGS HEALTH & REHABILIT | 939939 | 1144610940 | COSHOCTON SPRINGS HEALTH & REHABILIT | 1144610940 | OP Behavioral Health | OP BH | Pre-Service | PRE |  | COSHOCTON SPRINGS HEALTH & REHABILIT | 09222017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 09152017 | 10152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170918131 | F0391 | Unspecified dementia with behavioral disturbance | ICD10 | 09222017 | 99307, 99308, 99309 | NURSING FAC CARE, SUBSEQ | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 | LVMM for Nina Simon at Coshocton Springs  513-530-1391.  Inquired how they want the visits approved  3x wk  20 in 30 days  etc. |  |  |  |  | 0 |
| 08222017 | 2017-08-22T13:12:13+00:00 |  | 000112047-01 | TOMMY | CROMWELL | EYE SURGERY ASSOCS | 918998 | ANN E | MELICK | 1154324341 | KATZ, STEVEN E | 936995 | 1518906866 | STEVEN E KATZ | 1518906866 | Out of Network Services | OONS | Pre-Service | PRE | STEVEN E | KATZ | 09222017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 08222017 | 11222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170822122 | H47011, H47012 | Ischemic optic neuropathy, left eye | ICD10 | 09222017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 09202017 | 2017-09-20T15:48:18+00:00 |  | 000032984-01 | LAWRENCE | FATHBRUCKNER | OSU OTOLARYNGOLOGISTS LL | 950987 | LESLIE R | KIM | 1669775631 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09222017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 09262017 | 12262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921047 | C44229 | Squamous cell carcinoma skin/ left ear and extrn auric canal | ICD10 | 09222017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 08252017 | 2017-08-25T13:02:37+00:00 |  | 000114101-01 | Lenora | Bolinger | OSU OTOLARYNGOLOGISTS LL | 916952 | RICARDO L | CARRAU | 1740252691 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09222017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 09122017 | 12122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170827029 | C311 | Malignant neoplasm of ethmoidal sinus | ICD10 | 09222017 | 99211, 99212, 99213, 99214, 99215, 31237, 92507, 92610, 92612, 92526, 31575, 31579 | LARYNGOSCOPY, FLEX SCOPE W STROBOSCOPY | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 08232017 | 2017-08-23T13:21:27+00:00 |  | 000107652-01 | JUDITH | ROSE | OSU INTERNAL MED LLC | 948351 | CHRISTIAN T | EARL | 1316204753 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09222017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 08312017 | 11302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170824142 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 09222017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 08152017 | 2017-08-15T12:09:39+00:00 | Q19094468 | 000101359-01 | RICKY | CRAIG | ONCOLOGY HEMATOLOGY CARE | 923344 | JAMES | ESSELL | 1265425078 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE JEWISH HOSPITAL | 09222017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08162017 | 09152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170817009 | C8338 | Diffuse large B-cell lymphoma, lymph nodes of multiple sites | ICD10 | 09222017 | 71250, 70490, 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 0, 0, 1 | 1, 1, 1 | Void, Void, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09212017 | 2017-09-21T14:27:41+00:00 |  | 000065626-01 | FRANK | HOLTER | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09222017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10032017 | 12032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170922133 | C01, C109, R1312 | Dysphagia, oropharyngeal phase | ICD10 | 09222017 | 99211, 99212, 99213, 99214, 99215, 92507, 92610, 92612, 92526, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 62, 62, 62, 62, 62, 62, 62, 62, 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 09202017 | 2017-09-20T08:00:00+00:00 |  | 000071036-01 | Dwight | Johnson | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 09222017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 09272017 | 11272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170920011 | Z952 | Presence of prosthetic heart valve | ICD10 | 09222017 | 93306, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 09132017 | 2017-09-13T08:47:00+00:00 | Q19297641 | 000097212-01 | Myra | Crossley | RCHP WILMINGTON LLC | 901968 | MARK S | COLLINS | 1962451021 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CLINTON MEMORIAL HOSPITAL | 09222017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09182017 | 10182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170922016 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 09222017 | 71260, 74160 | CAT SCAN ABDOMEN C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08232017 | 2017-08-23T14:22:38+00:00 |  | 000015173-01 | BONNIE | BOGGS | AMERICAN MEDICAL EQUIPMENT INC | 903661 |  | AMERICAN MEDICAL EQUIPMENT INC | 1801970934 | AMERICAN MEDICAL EQUIPMENT INC | 903661 | 1801970934 | AMERICAN MEDICAL EQUIPMENT INC | 1801970934 | DME | DME | Pre-Service | PRE |  | AMERICAN MEDICAL EQUIPMENT INC | 09222017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 08232017 | 10232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170824149 | G35 | Multiple sclerosis | ICD10 | 09222017 | K0739, E2321 | POWER WHEELCHAIR ACCESSORY, HAND CONTROL INTERFACE, REMOTE JOYSTICK, NON | HCPCS | 3, 1 | 3, 1 | Approved, Approved | 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 08182017 | 2017-08-18T18:14:49+00:00 |  | 000101769-01 | Ronald | Cobb | MERCY HEALTH PHYSICIANS | 932656 | PRADEEP R | GUJJA | 1649465600 | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | DME | DME | Pre-Service | PRE |  | CORNERSTONE MEDICAL SRVS COLS LLC | 09222017 | Denied | MediGold Classic Preferred | Member | Not a Covered Benefit (PA) | Outpatient | 09222017 | 09232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170820005 | R55 | Syncope and collapse | ICD10 | 09222017 | A4465 | NON-ELASTIC BINDER FOR EXTREMITY | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Contacted Brie at providers office to get clinical documentation for this request., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 08232017 | 2017-08-23T08:21:59+00:00 |  | 000051159-01 | JOE | MOORE | OSU HLTH SYSTEM NEUROSUR | 908648 | PUNIT | AGRAWAL | 1578787990 | NEUROSCIENCE CENTER | 937422 | 1962431817 | NEUROSCIENCE CENTER | 1962431817 | Out of Network Services | OONS | Pre-Service | PRE |  | NEUROSCIENCE CENTER | 09222017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 11142017 | 12142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170823136 | G20 | Parkinson's disease | ICD10 | 09222017 | 95978, 95979, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
