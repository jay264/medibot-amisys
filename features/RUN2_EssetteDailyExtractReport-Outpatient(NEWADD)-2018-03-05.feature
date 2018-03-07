Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-03-05
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-03-05
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
| 03022018 | 2018-03-02T07:46:51+00:00 | Q20530683 | 000112714-01 | Jane | Thomas | UNKNOWN PROVIDER | 555555 |  | UNKNOWN PROVIDER | 0 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 03052018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03022018 | 04012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180305030 | C8290 | Follicular lymphoma, unspecified, unspecified site | ICD10 | 03052018 | 71250, 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02272018 | 2018-02-27T10:58:15+00:00 |  | 000102358-01 | LINDA | FISHER | ROBERT D RUPERT JR MD IN | 906637 |  | ROBERT D RUPERT JR MD INC | 1437395183 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 03052018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03052018 | 06052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180227137 | C779, C7989 | Secondary malignant neoplasm of other specified sites | ICD10 | 03052018 | 99211, 99212, 99213, 99214, 99215, 84443, 84439, 85025, 83735, 83565, 84520, 82374, 82435, 84295, 84132, 82565 | CREATININE,BLOOD | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 03022018 | 2018-03-02T11:39:01+00:00 |  | 000118733-01 | Brigitte | Puckett | OSU INTERNAL MED LLC | 913110 | JOSE A | BAZAN | 1326168832 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 03052018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 03122018 | 06122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180302114 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 03052018 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 03022018 | 2018-03-02T14:55:04+00:00 |  | 000075995-01 | Kenneth | Ruprecht | OSU INTERNAL MED LLC | 912724 | YVONNE A | EFEBERA | 1285612986 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 03052018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 03082018 | 09082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180302133 | C9000, C9002, I493, R509 | Fever, unspecified | ICD10 | 03052018 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 83615, 84550, 83883, 86334, 82784, 84165, 82784, 80053, 86334, 84166, 84156, 84155 | PROTEIN, TOTAL, SERUM, CHEMICAL | CPT | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185 | CPT | C4 | SECOND FAX WITH CORRECTED DATES OF APPROVAL |  |  |  |  | 0 |
| 03022018 | 2018-03-02T08:38:04+00:00 | Q20531280 | 000052827-01 | NANCY | HARMELINK | CEN OH UROLOGY GRP INC | 907066 | BENJAMIN J | MARTIN | 1609893221 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 03052018 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 03022018 | 04012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180305036 | C649 | Malignant neoplasm of unsp kidney, except renal pelvis | ICD10 | 03052018 | 74183 | MRI ABDOMEN W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03022018 | 2018-03-02T09:45:04+00:00 | Q20532609 | 000092757-01 | WILLIAM | LANTHORN | CEN OH PRIMARY CARE SPEC | 919580 | LAURA L | SORG | 1033318373 | COPC CENTRAL OHIO PRIMAR | 952425 | 1194705194 | JIGISHA L PATEL | 1326339870 | Radiology (HH) | OP RAD | Pre-Service | PRE | JIGISHA L | PATEL | 03052018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03022018 | 04012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180305049 | G4485 | Primary stabbing headache | ICD10 | 03052018 | 70551, 70544 | MR ANGIOGRAPHY HEAD W/O DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01252018 | 2018-01-25T14:29:23+00:00 |  | 000112175-01 | Rosalie | Caldwell | ADVANCED ANKLE & FOOT CT | 914852 | MACAIRA M | DYMENT | 1740475813 | ADVANCED ANKLE & FOOT CT | 904907 | 1760556104 | ADVANCED ANKLE & FOOT CENTER LLC | 1760556104 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | ADVANCED ANKLE & FOOT CENTER LLC | 03052018 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 03052018 | 03062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180125141 | L84, M21221, M79672 | Pain in left foot | ICD10 | 03052018 | 11056 | TRIM SKIN LESIONS, 2 TO 4 | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Call placed to the provider office 614-457-3212 to obtain a CPT code. Left voice message., Also faxed letters requesting information., PC to Kayla at provider office  614-457-3212  requested CPT code., She provides: 11056, Routine Foot Care and Debridement of Nails (L34246), The Medicare program generally does not cover routine foot care. However  this determination outlines the specific conditions for which coverage may be present., , The following services are considered to be components of routine foot care  regardless of the provider rendering the service:, •    Cutting or removal of corns and calluses;, •    Clipping  trimming  or debridement of nails  including debridement of mycotic nails;, •    Shaving  paring  cutting or removal of keratoma  tyloma  and heloma;, •    Non-definitive simple  palliative treatments like shaving or paring of plantar warts which do not require thermal or chemical cautery and curettage;, •    Other hygienic and preventive maintenance care in the realm of self care  such as cleaning and soaking the feet and the use of skin creams to maintain skin tone of both ambulatory and bedridden patients;, •    Any services performed in the absence of localized illness  injury  or symptoms involving the foot., , Treatment of mycotic nails may be covered under the exceptions to the routine foot care exclusion. The class findings  outlined below  or the presence of qualifying systemic illnesses causing a peripheral neuropathy  must be present. Payment may be made for the debridement of a mycotic nail (whether by manual method or by electrical grinder) when definitive antifungal treatment options have been reviewed and discussed with the patient at the initial visit and the physician attending the mycotic condition documents that the following criteria are met:, , In the absence of a systemic condition  the following criteria must be met:, •    In the case of ambulatory patients there exists:, , Clinical evidence of mycosis of the toenail  (B35.1) and, , Marked limitation of ambulation (R26.2  R26.81  R26.89)  pain (M79.601-M79.605  M79.621-M79.622  M79.631-M79.632  M79.641-M79.645  M79.651-M79.652  M79.661-M79.662  M79.671-M79.675  L60.2)  and/or secondary infection (L02.611-L02.612  L03.031-L03.032 , Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 01312018 | 2018-01-31T14:20:36+00:00 |  | 000064000-01 | SUZANNE | HANEY | ADVANCED ANKLE & FOOT CT | 904906 | ROBERT B | VANCOURT | 1578637963 | ADVANCED ANKLE & FOOT CT | 904906 | 1760556104 | ROBERT B VANCOURT | 1578637963 | Predetermination Request | PR | Pre-Service | PRE | ROBERT B | VANCOURT | 03052018 | Denied | MediGold Classic Preferred | Phone | Not a Covered Benefit (PA) | Outpatient | 03052018 | 03062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180131118 | L84, M79674 | Pain in right toe(s) | ICD10 | 03052018 | 11056 | TRIM SKIN LESIONS, 2 TO 4 | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Provider would like an IDN as this is a non-covered item.  Originally received request 1/9 and returned back as auth not required.  Spoke to Jennifer at Dr. Vancourt's office and initiated a new auth., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 02012018 | 2018-02-01T09:29:01+00:00 |  | 000026846-01 | ROBERT | SCARBOROUGH | ATOS MEDICAL INC | 938182 |  | ATOS MEDICAL INC | 1962452755 | ATOS MEDICAL INC | 938182 | 1962452755 | ATOS MEDICAL INC | 1962452755 | DME | DME | Pre-Service | PRE |  | ATOS MEDICAL INC | 03052018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02012018 | 05012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180201102 | Z930 | Tracheostomy status | ICD10 | 03052018 | A7507, A7508, A7520 | TRACHEOSTOMY/LARYNGECTOMY TUBE, NON-CUFFED, POLYVINYLCHLORIDE (PVC), SIL | HCPCS | 180, 180, 2 | 180, 180, 2 | Approved, Approved, Approved | 90, 90, 90 | HCPCS | HC | REQUESTS FOR SCA FAILED  SENT VIA E-MAIL |  |  |  |  | 0 |
| 02052018 | 2018-02-05T12:00:12+00:00 |  | 000046933-01 | ANNA | MOORE | OSU INTERNAL MED LLC | 918882 | ERIN M | BERTINO | 1043355688 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 03052018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02162018 | 05162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180205128 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 03052018 | 99211, 99212, 99213, 99214, 99215, 88305 | SURGICAL PATH LARGE SPEC/MANY SMALL | CPT | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
| 02282018 | 2018-02-28T08:08:41+00:00 |  | 000034797-01 | JOHN | HARRISON JR | ORTHO FOOT & ANKLE CNTR | 949420 | JUSTIN R | HUDSON | 1487649000 | ORTHO FOOT & ANKLE CNTR | 938451 | 1659364503 | ORTHO FOOT & ANKLE CNTR INC | 1659364503 | Predetermination Request | PR | Pre-Service | PRE |  | ORTHO FOOT & ANKLE CNTR INC | 03052018 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 03052018 | 03062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180228100 | I872, M79671 | Pain in right foot | ICD10 | 03052018 | 11721 | DEBRIDEMENT OF NAIL(S) BY ANY METHOD(S); SIX OR MORE | CPT | 0 | 1 | Denied | 0 | CPT | C4 |  |  |  |  |  | 0 |
| 02282018 | 2018-02-28T08:27:14+00:00 |  | 000039366-01 | RICHARD | GRUBBS | ORTHO FOOT & ANKLE CNTR | 949420 | JUSTIN R | HUDSON | 1487649000 | ORTHO FOOT & ANKLE CNTR | 938451 | 1659364503 | ORTHO FOOT & ANKLE CNTR INC | 1659364503 | Predetermination Request | PR | Pre-Service | PRE |  | ORTHO FOOT & ANKLE CNTR INC | 03052018 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 03052018 | 03062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180228101 | B351, E1140 | Type 2 diabetes mellitus with diabetic neuropathy, unsp | ICD10 | 03052018 | 11721 | DEBRIDEMENT OF NAIL(S) BY ANY METHOD(S); SIX OR MORE | CPT | 0 | 1 | Denied | 0 | CPT | C4 |  |  |  |  |  | 0 |
| 02282018 | 2018-02-28T08:42:23+00:00 |  | 000028043-01 | BILLIE | KALL | ORTHO FOOT & ANKLE CNTR | 949420 | JUSTIN R | HUDSON | 1487649000 | ORTHO FOOT & ANKLE CNTR | 938451 | 1659364503 | ORTHO FOOT & ANKLE CNTR INC | 1659364503 | Predetermination Request | PR | Pre-Service | PRE |  | ORTHO FOOT & ANKLE CNTR INC | 03052018 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 03052018 | 03062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180228103 | B351, I872 | Venous insufficiency (chronic) (peripheral) | ICD10 | 03052018 | 11721 | DEBRIDEMENT OF NAIL(S) BY ANY METHOD(S); SIX OR MORE | CPT | 0 | 1 | Denied | 0 | CPT | C4 |  |  |  |  |  | 0 |
| 02282018 | 2018-02-28T09:25:39+00:00 |  | 000107439-01 | Richard | King | ORTHO FOOT & ANKLE CNTR | 949420 | JUSTIN R | HUDSON | 1487649000 | ORTHO FOOT & ANKLE CNTR | 938451 | 1659364503 | ORTHO FOOT & ANKLE CNTR INC | 1659364503 | Predetermination Request | PR | Pre-Service | PRE |  | ORTHO FOOT & ANKLE CNTR INC | 03052018 | Denied | MediGold Essential Care | Fax | Not a Covered Benefit (PA) | Outpatient | 03052018 | 03062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180228111 | B351 | Tinea unguium | ICD10 | 03052018 | 11721 | DEBRIDEMENT OF NAIL(S) BY ANY METHOD(S); SIX OR MORE | CPT | 0 | 1 | Denied | 0 | CPT | C4 |  |  |  |  |  | 0 |
| 02282018 | 2018-02-28T14:32:14+00:00 |  | 000103505-01 | ANDREW | HOLUPKA | OHIO VETERANS HOME OF SANDUSKY | 942679 |  | OHIO VETERANS HOME OF SANDUSKY | 1790732576 | OHIO VETERANS HOME OF SANDUSKY | 942679 | 1790732576 | OHIO VETERANS HOME OF SANDUSKY | 1790732576 | Part B Therapy | OP THER | Post-Service | POST |  | OHIO VETERANS HOME OF SANDUSKY | 03052018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 02202018 | 03192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | X180228133 | E1165, I10, I739, M79662, R531 | Weakness | ICD10 | 03052018 | 97110, 97116, 97140, 97161 | PT EVAL LOW COMPLEX 20 MIN | CPT | 12, 12, 12, 12 | 12, 12, 12, 12 | Approved, Approved, Approved, Approved | 28, 28, 28, 28 | CPT | C4 |  |  |  |  |  | 0 |
| 03012018 | 2018-03-01T16:37:15+00:00 |  | 000037661-01 | JANICE | PINKERTON | GLATFELTER FAMILY MEDICA | 939538 | ALAN N | WARD | 1598796898 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 03052018 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Outpatient | 03052018 | 03062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180302106 | R51 | Headache | ICD10 | 03052018 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Call to providers office  s/w nurse Julie.  The date on the form listed as the 'start date' is the date the request imitated  not the visit date to the referred clinic., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 03022018 | 2018-03-02T17:14:08+00:00 | Q20538827 | 000052348-01 | HAROLD | YATES | RADIOLOGY INC | 943494 | JOHN A | MASINO | 1659674083 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 03052018 | Approved | MediGold Classic Preferred | HealthHelp | Inpatient | Outpatient | 03022018 | 04012018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180305077 | C44321 | Squamous cell carcinoma of skin of nose | ICD10 | 03052018 | 70460, 70491 | CAT SCAN SFT TIS NECK C CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
