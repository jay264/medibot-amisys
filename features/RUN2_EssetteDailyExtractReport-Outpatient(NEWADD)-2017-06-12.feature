Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-12
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-12
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
| 03312017 | 2017-03-31T14:06:14+00:00 | Q18098601 | 000103357-01 | Bertha | Hays | KNOX COMMUNITY HSP PHYS | 905528 | HUSAIN A | RASHEED | 1437144029 | KNOX COMMUNITY HSP PHYS | 911677 | 1154483022 | KNOX COMMUNITY HOSPITAL PHYS PRCTS | 1154483022 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL PHYS PRCTS | 06122017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04032017 | 07022017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170331011 | C8590 | Non-Hodgkin lymphoma, unspecified, unspecified site | ICD10 | 06122017 | J9070, J9000, J9370, J9310, J1453 | Fosaprepitant injection | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 06072017 | 2017-06-07T14:53:43+00:00 | Q18601065 | 000097931-01 | Suzanne | Ellis | NEWARK RADIATION ONCOLOG | 944961 | ADAM C | MAIER | 1326350471 | NEWARK RADIATION ONCOLOG | 938421 | 1497739478 | NEWARK RADIATION ONCOLOGY INC | 1497739478 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | NEWARK RADIATION ONCOLOGY INC | 06122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06082017 | 09062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170609062 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 06122017 | G6013 | RADIATION TREATMENT DELIVERY | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 06092017 | 2017-06-09T09:55:04+00:00 |  | 000082631-01 | Leslie | Kennedy Jr | UNIVERSITY OF CINCINNATI | 931953 | AMIT | GOVIL | 1447208566 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Transplant Eval | TRANS | Pre-Service | PRE |  | UNIVERSITY HOSPITAL | 06122017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Transplant Evaluation | Outpatient | 06092017 | 09092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170609116 | I10 | Essential (primary) hypertension | ICD10 | 06122017 | 99354, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3 | 3, 3 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06092017 | 2017-06-09T10:36:46+00:00 |  | 000105971-01 | Forrest | Arnold | ORTHO CLINIC OF DAYTONA | 950786 | RICHARD K | GAINES | 1952355497 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 06122017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 06142017 | 06302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170609117 | S72142D | Displ intertroch fx l femur, subs for clos fx w routn heal | ICD10 | 06122017 | 97110, 97530, 97140, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 1 | 3, 3, 3, 1 | Approved, Approved, Approved, Approved | 17, 17, 17, 17 | HCPCS | HC |  |  |  |  |  | 0 |
| 06092017 | 2017-06-09T14:21:32+00:00 |  | 000019031-01 | FRANCES | HARLEY | ORTHOPEDIC ONE INC | 936949 | DAVID F | HUBER | 1518950740 | REHAB MEDICAL OF COLUMBUS | 914581 | 1851320774 | REHAB MEDICAL OF COLUMBUS | 1851320774 | DME | DME | Pre-Service | PRE |  | REHAB MEDICAL OF COLUMBUS | 06122017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06092017 | 12092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170609131 | S32110D, S52021A | Disp fx of olecran pro w/o intartic extn right ulna, init | ICD10 | 06122017 | E2365 | POWER WHEELCHAIR ACCESSORY, U-1 SEALED LEAD ACID BATTERY, EACH (E.G. GEL | HCPCS | 2 | 2 | Approved | 184 | HCPCS | HC |  |  |  |  |  | 0 |
| 06092017 | 2017-06-09T14:46:42+00:00 |  | 000088634-01 | Jerry | Van Dyne | MERRITT, ROBERT E | 930196 | ROBERT E | MERRITT | 1508051319 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06122017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 06202017 | 09202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170609134 | J852 | Abscess of lung without pneumonia | ICD10 | 06122017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 1 | 3, 3, 3, 3, 3, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06092017 | 2017-06-09T10:51:21+00:00 | Q18617457 | 000083115-01 | Linda | Phillips | MID OH NEUROLOGY INC | 939558 | JOSHUA C | NELSON | 1609870344 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 06122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06142017 | 07142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170612021 | I63431 | Cerebral infrc due to embolism of right post cerebral artery | ICD10 | 06122017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T14:02:39+00:00 | Q18603202 | 000055741-01 | JACK | SMITH | OHIO INSTITUTE FOR COMPR | 900993 | MERVET K | SALEH | 1356414957 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 06122017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06072017 | 07072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170612078 | M5416 | Radiculopathy, lumbar region | ICD10 | 06122017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T15:46:50+00:00 | Q18612615 | 000037295-01 | HAROLD | HAMBROCK | MOUNT CARMEL HLTH PRVDRS | 933615 | CHRISTOPHER P | BARAN | 1689082695 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 06122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06082017 | 07082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170612099 | R911 | Solitary pulmonary nodule | ICD10 | 06122017 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T15:54:40+00:00 | Q18612769 | 000101540-01 | Tammy | Felumlee | COSHOCTON COUNTY MEM HSP | 911145 | KEITH W | BRANTLEY | 1609852672 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 06122017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06132017 | 07132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170612100 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 06122017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06122017 | 2017-06-12T09:12:09+00:00 |  | 000039915-01 | MARVIN | VALENTINE | OSU INTERNAL MED LLC | 928684 | BHAVANA | BHATNAGAR | 1154598498 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06122017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06122017 | 09122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170612109 | C9200 | Acute myeloblastic leukemia, not having achieved remission | ICD10 | 06122017 | G0364, 38221, 88313, 88237, 88262, 88184, 88342, 88307, 36415, 85025, 80042, 83615, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 82565, 84520, 82374, 82435, 84295, 84132, 85652, 82784, 82785, 88184, 84550, 82232, 84100, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06092017 | 2017-06-09T07:40:33+00:00 | Q18614099 | 000038247-01 | GLORIA | MILLER | MOUNT CARMEL HLTH PRVDRS | 905438 | BETHANY A | RECKER | 1417028697 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 06122017 | Approved | TRINITY HEALTH | HealthHelp | Medical Criteria Met | Outpatient | 06092017 | 07092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170612112 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 06122017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06092017 | 2017-06-09T08:02:18+00:00 | Q18614363 | 000041810-01 | Freda | Noice | MOUNT CARMEL HLTH PRVDRS | 909299 | PATRICIA C | GARCIA | 1184833436 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DILEY RIDGE MEDICAL CENTER | 06122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06142017 | 07142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170612118 | D320 | Benign neoplasm of cerebral meninges | ICD10 | 06122017 | 70470 | CAT SCAN HEAD WO/W IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T14:52:07+00:00 | Q18611653 | 000014057-01 | AUDREY | CLEVENGER | OH ONCOLOGY & HEMATOLOGY | 934772 | MARK | SEGAL | 1093715385 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 06122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06192017 | 07192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170612120 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 06122017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T14:55:19+00:00 | Q18611702 | 000000455-01 | JAMES | KURTZ | CARDIOVASCULAR SPEC LLC | 935902 | SHANTANU | SINHA | 1124029426 | CARDIOVASCULAR SPEC LLC | 910293 | 1336375757 | CARDIOVASCULAR SPECIALISTS LLC | 1871728303 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CARDIOVASCULAR SPECIALISTS LLC | 06122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06142017 | 07142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170612121 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 06122017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T14:02:01+00:00 | Q18610715 | 000077229-01 | Larry | Reed | HEARTLAND CARDIOLOGY LLC | 936383 | DANIEL J | EVANS | 1760477640 | HEARTLAND CARDIOLOGY LLC | 936383 | 1538488564 | DANIEL J EVANS | 1760477640 | Radiology (HH) | OP RAD | Pre-Service | PRE | DANIEL J | EVANS | 06122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06122017 | 07122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170612131 | R079 | Chest pain, unspecified | ICD10 | 06122017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06062017 | 2017-06-06T08:47:21+00:00 | 18581958 | 000015576-01 | JAMES | NEWSOME | FAYETTE COUNTY MEM HSP C | 936633 | BRUCE L | AUERBACH | 1235139932 | BRUCE L AUERBACH MD LLC | 902501 | 1770787723 | BRUCE L AUERBACH MD LLC | 1770787723 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BRUCE L AUERBACH MD LLC | 06122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06122017 | 07122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170612156 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 06122017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06062017 | 2017-06-06T06:53:18+00:00 | 18581047 | 000076234-01 | Robert | Jones | THE UROLOGY GROUP | 921736 | DOUGLAS E | FEENEY | 1649216326 | MONITOR MEDICAL INC | 922542 | 1619315371 | MONITOR MEDICAL INC | 1619315371 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MONITOR MEDICAL INC | 06122017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06072017 | 07072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170612157 | C61 | Malignant neoplasm of prostate | ICD10 | 06122017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06052017 | 2017-06-05T17:33:26+00:00 | 18522539 | 000089752-01 | Charles | Pope Jr | SCIOTO VALLEY UROLOGY IN | 936922 | GEORGE T | HO | 1255390852 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05302017 | 06292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170612160 | C642 | Malignant neoplasm of left kidney, except renal pelvis | ICD10 | 06122017 | 74170 | CAT SCAN ABDOMEN W/WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06122017 | 2017-06-12T15:23:16+00:00 |  | 000111455-01 | Barbara | Butcher | OSU INTERNAL MED LLC | 935660 | PHILIP T | DIAZ | 1114930476 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06122017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Services Not Available In-Network | Outpatient | 06262017 | 07262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170612161 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 06122017 | 71250, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 06072017 | 2017-06-07T10:39:03+00:00 | 18595900 | 000099621-01 | George | Noel | MERCY HEALTH PHYSICIANS | 926858 | CHRISTOPHER R | BUTLER | 1023215803 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MERCY WEST HOSPITAL | 06122017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06082017 | 07082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170612167 | Z87891 | Personal history of nicotine dependence | ICD10 | 06122017 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 06072017 | 2017-06-07T08:44:42+00:00 | 18593564 | 000027695-01 | EDITH | ADKINS | MOUNT CARMEL HLTH PRVDRS | 932965 | MATTHEW R | PAULUS | 1407131022 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06152017 | 07152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170612169 | R0609 | Other forms of dyspnea | ICD10 | 06122017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T11:01:10+00:00 | 18607404 | 000108826-01 | Charles | Tague | MOUNT CARMEL HLTH PRVDRS | 933363 | PAMELA J | HUTTON | 1629030010 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 06122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06082017 | 07082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170612171 | I5020 | Unspecified systolic (congestive) heart failure | ICD10 | 06122017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T11:15:27+00:00 | 18607668 | 000115136-01 | Ronald | Smith | GENESIS MEDICAL GRP LLC | 949879 | SELOMIE M | KEBEDE | 1801024708 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 06122017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06122017 | 07122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170612172 | R0609 | Other forms of dyspnea | ICD10 | 06122017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T11:15:48+00:00 | 18607686 | 000097683-01 | Carolyn | Paxson | CRB OF OH INC | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06122017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06082017 | 07082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170612173 | I719 | Aortic aneurysm of unspecified site, without rupture | ICD10 | 06122017 | 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
