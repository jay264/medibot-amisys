Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-02_thru_2018-02-04
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-02_thru_2018-02-04
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
| 01312018 | 2018-01-31T15:06:00+00:00 | Q20300641 | 000083720-01 | Paula | Cupp | SRINIVAS KOLLI MD INC | 937037 | SRINIVAS | KOLLI | 1619948585 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 02022018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02052018 | 03072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180202044 | K7460 | Unspecified cirrhosis of liver | ICD10 | 02022018 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01312018 | 2018-01-31T15:21:42+00:00 | Q20300677 | 000112155-01 | Carmela | Cassano-Wiant | ALLIANCE PHYSICIANS INC | 932718 | JOSEPHINE | RANDAZZO | 1659315216 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GRANDVIEW MEDICAL CENTER | 02022018 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01312018 | 03022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180202045 | M5126 | Other intervertebral disc displacement, lumbar region | ICD10 | 02022018 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02012018 | 2018-02-01T05:55:48+00:00 | Q20302336 | 000039754-01 | BETTY | AYERS | CEN OH PRIMARY CARE SPEC | 937249 | ANTHONY M | NOVENA | 1639155203 | COPC CENTRAL OHIO PRIMAR | 952425 | 1194705194 | JIGISHA L PATEL | 1326339870 | Radiology (HH) | OP RAD | Pre-Service | PRE | JIGISHA L | PATEL | 02022018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02012018 | 03032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180202054 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 02022018 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02012018 | 2018-02-01T07:48:00+00:00 | Q20302772 | 000044242-01 | Rita | Harden | FAIRFIELD HLTHCARE PROFS | 932438 | OMAR | AL-NOURI | 1770742264 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 02022018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02012018 | 03032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180202060 | I658 | Occlusion and stenosis of other precerebral arteries | ICD10 | 02022018 | 70498 | CT ANGIOGRAPHY, NECK | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02012018 | 2018-02-01T08:15:12+00:00 | Q20303043 | 000096718-01 | Stephen | Starr | MOUNT CARMEL HLTH PRVDRS | 935009 | STEVEN S | WALKER | 1861455131 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 02022018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02142018 | 03162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180202061 | R0609 | Other forms of dyspnea | ICD10 | 02022018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02012018 | 2018-02-01T08:27:11+00:00 | Q20303185 | 000116451-01 | DAVEY | TABLER | OHIO ENT & ALLERGY PHYSI | 936078 | ADAM C | SPIESS | 1770555179 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 02022018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02012018 | 03032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180202062 | J328 | Other chronic sinusitis | ICD10 | 02022018 | 70486 | CAT SCAN MAXIOFACIAL WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02012018 | 2018-02-01T08:57:48+00:00 | Q20303721 | 000089341-01 | Arthur | Nichols | CARDIOLOGY SOUTH INC | 902309 |  | CARDIOLOGY SOUTH INC | 1750432811 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 02022018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02052018 | 03072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180202065 | I25110 | Athscl heart disease of native cor art w unstable ang pctrs | ICD10 | 02022018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02012018 | 2018-02-01T09:09:35+00:00 | Q20303977 | 000027193-01 | PRISCILLA | GROSSL | MOUNT CARMEL HLTH PRVDRS | 908292 | TARIQ M | GILL | 1104001189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 02022018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02022018 | 03042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180202070 | R270 | Ataxia, unspecified | ICD10 | 02022018 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06072017 | 2017-06-07T13:49:00+00:00 | Q18601215 | 000111455-01 | Barbara | Butcher | OSU INTERNAL MED LLC | 935660 | PHILIP T | DIAZ | 1114930476 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 02042018 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06122017 | 07122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170614047 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 02042018 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 396 | CPT | C4 |  |  |  |  |  | 0 |
| 07052017 | 2017-07-05T10:20:57+00:00 |  | 000059599-01 | CONNIE | HINTON | FAIRFIELD HLTHCARE PROFS | 916318 | JARROD T | BRUCE | 1134162563 | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | DME | DME | Pre-Service | PRE |  | CORNERSTONE MEDICAL SRVS COLS LLC | 02042018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07052017 | 08052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170705086 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 02042018 | E0466 | HOME VENT NON-INVASIVE INTER | HCPCS | 1 | 1 | Approved | 32 | HCPCS | HC | Spoke to Jordan at Cornerstone on 070517 at 11:05:00 in regards to HCPC Code and was given E0466. |  |  |  |  | 0 |
| 01252018 | 2018-01-25T14:29:23+00:00 |  | 000112175-01 | Rosalie | Caldwell | ADVANCED ANKLE & FOOT CT | 914852 | MACAIRA M | DYMENT | 1740475813 | ADVANCED ANKLE & FOOT CT | 904907 | 1760556104 | ADVANCED ANKLE & FOOT CENTER LLC | 1760556104 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | ADVANCED ANKLE & FOOT CENTER LLC | 02022018 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 02022018 | 02032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180125141 | L84, M21221, M79672 | Pain in left foot | ICD10 | 02022018 | 11056 | TRIM SKIN LESIONS, 2 TO 4 | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Call placed to the provider office 614-457-3212 to obtain a CPT code. Left voice message., Also faxed letters requesting information., PC to Kayla at provider office  614-457-3212  requested CPT code., She provides: 11056, Routine Foot Care and Debridement of Nails (L34246), The Medicare program generally does not cover routine foot care. However  this determination outlines the specific conditions for which coverage may be present., , The following services are considered to be components of routine foot care  regardless of the provider rendering the service:, •    Cutting or removal of corns and calluses;, •    Clipping  trimming  or debridement of nails  including debridement of mycotic nails;, •    Shaving  paring  cutting or removal of keratoma  tyloma  and heloma;, •    Non-definitive simple  palliative treatments like shaving or paring of plantar warts which do not require thermal or chemical cautery and curettage;, •    Other hygienic and preventive maintenance care in the realm of self care  such as cleaning and soaking the feet and the use of skin creams to maintain skin tone of both ambulatory and bedridden patients;, •    Any services performed in the absence of localized illness  injury  or symptoms involving the foot., , Treatment of mycotic nails may be covered under the exceptions to the routine foot care exclusion. The class findings  outlined below  or the presence of qualifying systemic illnesses causing a peripheral neuropathy  must be present. Payment may be made for the debridement of a mycotic nail (whether by manual method or by electrical grinder) when definitive antifungal treatment options have been reviewed and discussed with the patient at the initial visit and the physician attending the mycotic condition documents that the following criteria are met:, , In the absence of a systemic condition  the following criteria must be met:, •    In the case of ambulatory patients there exists:, , Clinical evidence of mycosis of the toenail  (B35.1) and, , Marked limitation of ambulation (R26.2  R26.81  R26.89)  pain (M79.601-M79.605  M79.621-M79.622  M79.631-M79.632  M79.641-M79.645  M79.651-M79.652  M79.661-M79.662  M79.671-M79.675  L60.2)  and/or secondary infection (L02.611-L02.612  L03.031-L03.032 , Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 01292018 | 2018-01-29T11:11:51+00:00 |  | 000054225-01 | ROBERT | REESER | MOUNT CARMEL HLTH PRVDRS | 908292 | TARIQ M | GILL | 1104001189 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 02022018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01292018 | 03292018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180129036 | G20 | Parkinson's disease | ICD10 | 02022018 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 1 | 1 | Approved | 60 | CPT | C4 |  |  |  |  |  | 0 |
| 01302018 | 2018-01-30T10:34:09+00:00 |  | 000087336-01 | William | Ford | OSU INTERNAL MED LLC | 948823 | JONATHAN E | BRAMMER | 1578897195 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02022018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 01312018 | 07312018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180130130 | C9000, Z9481 | Bone marrow transplant status | ICD10 | 02022018 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 86334, 82310, 82247, 82565, 84520, 82435, 82040, 84075, 84155, 84295, 84450, 84132, 82374, 84460, 84460, 82310, 83615, 83883, 82784, 84165, 84155, 88262 | CHROM. ANAL., LYMPH, 2 KARYOTYPES | CPT | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182 | CPT | C4 |  |  |  |  |  | 0 |
| 01302018 | 2018-01-30T11:00:48+00:00 |  | 000054297-01 | DONNA | HARLOW | NEUROSCIENCE CENTER | 912936 | ADAM D | QUICK | 1437283918 | WALGREENS INFUSION SERVICES MILFORD* | 928759 | 1376631457 | WALGREENS INFUSION SERVICES MILFORD* | 1376631457 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | WALGREENS INFUSION SERVICES MILFORD* | 02022018 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 02022018 | 02032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180130132 | G1221 | Amyotrophic lateral sclerosis | ICD10 | 02022018 | J3490, 99601, 99602, S9379, S5501, S9542 | HOME INJECTABLE THERAPY, NOT OTHERWISE CLASSIFIED, INCLUDING ADMINISTRAT | HCPCS | 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0, 0 | HCPCS | HC | Call to provider  s/w  Lisa Culp at 440-627-2228. Requesting additional clinical documentation  specifically regarding the mbr's response to her current ALS medication  Riluzole and purpose for requesting to initiate Radicava.  She will fax the information., Call to provider  s/w  Lisa Culp at 440-627-2228.  Left voice message requesting the additional clinical information as stated in previous note., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 01312018 | 2018-01-31T05:48:49+00:00 |  | 000057744-01 | HELENE | FELTY | OSU SURGERY LLC | 930196 | ROBERT E | MERRITT | 1508051319 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02022018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02062018 | 05062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180131103 | C321, R911 | Solitary pulmonary nodule | ICD10 | 02022018 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
| 01312018 | 2018-01-31T14:20:36+00:00 |  | 000064000-01 | SUZANNE | HANEY | ADVANCED ANKLE & FOOT CT | 904906 | ROBERT B | VANCOURT | 1578637963 | ADVANCED ANKLE & FOOT CT | 904906 | 1760556104 | ROBERT B VANCOURT | 1578637963 | Predetermination Request | PR | Pre-Service | PRE | ROBERT B | VANCOURT | 02022018 | Denied | MediGold Classic Preferred | Phone | Not a Covered Benefit (PA) | Outpatient | 02022018 | 02032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180131118 | L84, M79674 | Pain in right toe(s) | ICD10 | 02022018 | 11056 | TRIM SKIN LESIONS, 2 TO 4 | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Provider would like an IDN as this is a non-covered item.  Originally received request 1/9 and returned back as auth not required.  Spoke to Jennifer at Dr. Vancourt's office and initiated a new auth., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 02012018 | 2018-02-01T11:20:05+00:00 | Q20306831 | 000053788-01 | GLENDA | YOUNG | PREMIER UROLOGY CORP | 935543 | DAVID H | BROWN SR | 1578536181 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 02022018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02022018 | 03042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180202090 | N200 | Calculus of kidney | ICD10 | 02022018 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02012018 | 2018-02-01T11:22:16+00:00 | Q20306880 | 000028756-01 | DAVID | HUNT | PREMIER UROLOGY CORP | 935543 | DAVID H | BROWN SR | 1578536181 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 02022018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02022018 | 03042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180202091 | R310 | Gross hematuria | ICD10 | 02022018 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02012018 | 2018-02-01T12:24:59+00:00 | Q20308062 | 000070418-01 | Richard | Moore | WHETSTONE MED CLINIC INC | 935035 | JAMES W | WHETSTONE | 1336197474 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 02022018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02022018 | 03042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180202099 | M79672 | Pain in left foot | ICD10 | 02022018 | 73718 | MRI LOWER EXTREMITY W/O DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02012018 | 2018-02-01T13:22:22+00:00 | Q20309163 | 000032880-01 | JOAN | CURTIS | OH ONCOLOGY & HEMATOLOGY | 928374 | SAMEH | MIKHAIL | 1447455720 | OH ONCOLOGY & HEMATOLOGY | 951012 | 1467717553 | LAVERNE G MENSAH | 1891788709 | Radiology (HH) | OP RAD | Pre-Service | PRE | LAVERNE G | MENSAH | 02022018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02022018 | 03042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180202104 | C8296 | Follicular lymphoma, unspecified, intrapelvic lymph nodes | ICD10 | 02022018 | 78472 | BL PL IMG,REST,WAL MTN SDY/REG EJ F | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02012018 | 2018-02-01T13:08:04+00:00 |  | 000120077-01 | Nancy | Miller | OSU INTERNAL MED LLC | 928684 | BHAVANA | BHATNAGAR | 1154598498 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02022018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 02052018 | 05072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180202113 | D471 | Chronic myeloproliferative disease | ICD10 | 02022018 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 92565, 82565, 84520, 82374, 82435, 84295, 84132, 82310, 82040, 84075, 84460, 84450, 82248, 82248, 84155 | PROTEIN, TOTAL, SERUM, CHEMICAL | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 02012018 | 2018-02-01T15:33:13+00:00 |  | 000073876-01 | Dorothy | David | UNIVERSITY RADIATION ONC | 950495 | JOSHUA D | PALMER | 1275825283 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02022018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02062018 | 05062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180202119 | D444 | Neoplasm of uncertain behavior of craniopharyngeal duct | ICD10 | 02022018 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90, 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
| 02012018 | 2018-02-01T17:04:32+00:00 |  | 000075768-01 | Floyd | Martin | FINK, COLLEEN A | 910556 | COLLEEN A | FINK | 1346412871 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Out of Network Services | OONS | Pre-Service | PRE |  | MERCY MEMORIAL HOSPITAL - CAH | 02022018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02062018 | 05072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180202121 | I87312, L97822 | Non-prs chronic ulcer oth prt l low leg w fat layer exposed | ICD10 | 02022018 | Q4160, 15271, 15272 | SKIN SUB GRAFT T/A/L ADD-ON | CPT | 60, 10, 10 | 60, 10, 10 | Approved, Approved, Approved | 91, 91, 91 | CPT | C4 | Call to Cynthia in provider office   781-746-1942. Requested additional clinical documentation. |  |  |  |  | 0 |
| 02022018 | 2018-02-02T09:48:06+00:00 |  | 000031488-01 | LEONARD | PRESTON | OSU UROLOGY LLC | 939464 | KAMAL S | POHAR | 1952350985 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02022018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02062018 | 05072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180202129 | C679 | Malignant neoplasm of bladder, unspecified | ICD10 | 02022018 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 02022018 | 2018-02-02T15:48:01+00:00 | Q20319805 | 000095258-01 | Robert | Cordy Jr | CLINTON MEMORIAL HOSPITAL | 917905 |  | CLINTON MEMORIAL HOSPITAL | 1063713659 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CLINTON MEMORIAL HOSPITAL | 02022018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02052018 | 05062018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180202151 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 02022018 | 77386 | NTSTY MODUL RAD TX DLVR CPLX | CPT | 1 | 1 | Approved | 91 | CPT | C4 |  |  |  |  |  | 0 |
