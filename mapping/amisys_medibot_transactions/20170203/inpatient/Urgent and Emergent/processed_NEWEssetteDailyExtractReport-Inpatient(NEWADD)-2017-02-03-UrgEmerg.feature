Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-02-03-UrgEmerg
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-02-03-UrgEmerg
Given I save the auth class "<auth_class>" to a variable
Given I sign in to the application
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
#And in the "Certification" page I enter the first "<service_code>" into the "Primary Proc Number 1" service code field and save the variable
And the test pauses for "2" seconds
And in the "certification" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image and save the variable
And the test pauses for "2" seconds
And I press "Control + S"
And the test pauses for "3" seconds

And in the "certification" page I should see the "loaded_blue_sidebar" image
And the test pauses for "3" seconds
And in the "Functions Menu" page I click on "Hospital Svcs"
And the test pauses for "3" seconds
And in the "hospital_services" page I should see the "est_admit" image
And the test pauses for "3" seconds
And in the "hospital_services" page I enter "<care_date>" into the "est_admit" image
And in the "hospital_services" page I enter "<auth_approval_days>" into the "auth_days" image
And in the "hospital_services" page I enter "$" into the "facility_number" image
And I press ENTER graphically
And the test pauses for "3" seconds
And in the "provider_search" page I should see the "prov_number" image
And in the "provider_search" page I enter "<servicing_provider_id>" into the "prov_number" image
And I press ENTER graphically
And the test pauses for "3" seconds
And in the "provider_search" page I should see the "loaded_header" image
And the test pauses for "3" seconds
And in the "provider_search" page I click on the "prov_affs" image
And the test pauses for "5" seconds
And in the "provider_affiliation_list" page I should see the "table_headers" image
And the test pauses for "5" seconds
#And in the "provider_affiliation_list" page I enter "HM" into the "pg_search_cell" image
And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
And I press ENTER graphically
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I enter "<facility_name>" into the "facility_name_search_cell" image
And I press ENTER graphically
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I click on the "scrollbar" image
And the test pauses for "2" seconds
And in the "provider_affiliation_list" page I enter "H" into the "cp_search_cell" image
And I press ENTER graphically
And in the "provider_affiliation_list" page I click on the "scrollbar" image
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
And I press ENTER graphically
And the test pauses for "3" seconds
And I determine whether something is PAR or NONPAR
And the test pauses for "3" seconds
And in the "provider_affiliation_list" page I click on the "return_lookup" image
And the test pauses for "3" seconds

And in the "hospital_services" page I enter "$" into the "ref_prov_number" image
And I press ENTER graphically
And the test pauses for "3" seconds
And in the "provider_search" page I should see the "prov_number" image
And in the "provider_search" page I enter "<requesting_provider_id>" into the "prov_number" image
And I press ENTER graphically
And the test pauses for "3" seconds
And in the "provider_search" page I should see the "loaded_header" image
And the test pauses for "3" seconds
And in the "provider_search" page I click on the "prov_affs" image
And the test pauses for "5" seconds
And in the "provider_affiliation_list" page I should see the "table_headers" image
And the test pauses for "5" seconds
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
And the test pauses for "2" seconds
And in the "provider_affiliation_list" page I click on the "scrollbar" image
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
And I press ENTER graphically
And the test pauses for "3" seconds
And in the "provider_affiliation_list" page I click on the "return_lookup" image
And the test pauses for "3" seconds
And I copy the provider number to the clipboard and save the variable
And the test pauses for "3" seconds
And in the "hospital_services" page I click on the "save" image
And the test pauses for "5" seconds
And I press "F8"
And the test pauses for "5" seconds

And in the "certification" page I should see the "loaded_blue_sidebar" image
And the test pauses for "5" seconds
And in the "Functions Menu" page I click on "Authorized Svcs"
And the test pauses for "5" seconds
And in the "authorized_services" page I should see the "loaded_sidebar" image
And the test pauses for "3" seconds
And in the "authorized_services" page I convert "<care_date>" into the "dates_begin_requested" image and save the variable
And in the "authorized_services" page I add the "<auth_approval_days>" to the "<care_date>" and put the result in the "dates_end_requested" image
And in the "authorized_services" page I enter "<care_date>" into the "dates_begin_approved" image
And the test pauses for "2" seconds
And in the "authorized_services" page I add the "<auth_approval_days>" to the "<care_date>" and put the result in the "dates_end_approved" image
And the test pauses for "2" seconds
And in the "authorized_services" page I enter "<auth_approval_days>" into the "how_many_requested" image
And the test pauses for "2" seconds
And in the "authorized_services" page I enter "<auth_approval_days>" into the "how_many_authorized" image and add one
And the test pauses for "3" seconds
And I use the sub class "<sub_class>" to determine what location to enter into the location image
And the test pauses for "2" seconds
And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
And the test pauses for "2" seconds
And in the "authorized_services" page I enter "M" into the "claim_type" image
And the test pauses for "2" seconds
And in the "authorized_services" page I enter "AD" into the "count" image

And the test pauses for "2" seconds
And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
And in the "authorized_services" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image
And the test pauses for "2" seconds
And in the "authorized_services" page I click on the "save" image
And the test pauses for "10" seconds

#And I input the alternate procedure codes if there are any

#And the test pauses for "5" seconds
And I press "F8"
And the test pauses for "5" seconds
And I press "F8"
And the test pauses for "3" seconds

And I input the notes if any are contained in "<notes>"
And the test pauses for "5" seconds

And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
And I press "Control + S"
And the test pauses for "3" seconds

And I press "Control + Q"
And the test pauses for "5" seconds
And I press ENTER graphically
And the test pauses for "5" seconds
And I close "Internet Explorer"

	Examples:
		| requested_date  | military_date      | other_reference_# |	member_id | member_first_name |	member_last_name | practice_name | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name  | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	| servicing_provider_npi_# |	sub_class  | sub_class_code | type  |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm | auth_for_payment | days_used_prior | dc | denc_date | mds_date | nomnc_date | total_days | total_skilled_days | auth_type      | auth_status    |	auth_number |	diagnosis_code     |	diagnosis                                          			|	diagnosis_type |	auth_modified_date | service_code       | service_description                                                    | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                  | care_date | actual_level_of_care | approved_level_of_care | determination | auth_approval_days |
| 01312017 | 2017-01-31T09:03:54+00:00 |  | 000107833-01 | ROBERT | LEHNERT | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02032017 | Denied | MediGold Essential Care | Reports | Secondary Only | Inpatient | 02032017 | 02042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170201004 | T84020A | Dislocation of internal right hip prosthesis, init encntr | ICD10 | 02032017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Hospital records is showing MediGold as secondary insurance. | 01312017, 02012017, 02022017 | Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient | Approved, Approved,  | 3, 3, 3 |
| 01282017 | 2017-01-28T10:52:01+00:00 |  | 000085163-01 | Janet | Haddox | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02032017 | Denied | MediGold Essential Care | Reports | Inpatient | Inpatient | 02032017 | 02042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170201022 | R0600 | Dyspnea, unspecified | ICD10 | 02032017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Clinical documentation reviewed in PowerChart | 01282017, 01292017, 01302017, 01312017, 02012017, 02022017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved,  | 6, 6, 6, 6, 6, 6 |
| 01312017 | 2017-01-31T16:05:30+00:00 |  | 000057684-01 | DENNIS | HARVEY | CRB OF OH INC | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02032017 | Denied | MediGold Classic Preferred | Fax | Pending Admission | Inpatient | 02032017 | 02042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170201032 | I340 | Nonrheumatic mitral (valve) insufficiency | ICD10 | 02102017 | 33419, 33418 | REPAIR TCAT MITRAL VALVE | CPT | 1, 1 | 1, 1 | Approved, Approved | 61, 61 | CPT | C4 | Clinical documentation reviewed in PowerChart, Clinical documentation reviewed in PowerChart | 02082017, 02092017 | Inpatient, Inpatient | Inpatient, Inpatient | Approved,  | 61, 61 |
| 02012017 | 2017-02-01T14:18:51+00:00 | FIN0252144767030 | 000093715-01 | Jane | Ott | MOUNT CARMEL HLTH PRVDRS | 909312 | PHILLIP | IMMESOETE | 1609089317 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02032017 | Denied | MediGold Classic Preferred | Reports | EIS | Inpatient | 02032017 | 02042017 | Standard |  | Yes |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170201059 | M4806 | Spinal stenosis, lumbar region | ICD10 | 02032017 |  |  |  | 0 | 0 |  | 0 |  |  | Received per vista report dated 02/01/2017, Admit date 01/31/2017, Admit type: inpatient, Clinical documentation reviewed in PowerChart, Meets inpt- MediGold EIS-Y | 01312017, 02012017, 02022017 | Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient | Approved, Approved,  | 3, 3, 3 |
| 02022017 | 2017-02-02T08:52:54+00:00 | FIN0255521967011 | 000045423-01 | PHILIP | HAMILTON | ORTHO & NEURO CONSULTS I | 935727 | MICHAEL B | CANNONE | 1275517328 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 02032017 | Denied | MediGold Classic Preferred | Reports | EIS | Inpatient | 02032017 | 02042017 | Standard |  | Yes |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170202007 | M5136 | Other intervertebral disc degeneration, lumbar region | ICD10 | 02032017 |  |  |  | 0 | 0 |  | 0 |  |  | Notified per vista report dated 02/02/2017 pt presented 02/01/2017 for planned procedure., Clinical documentation reviewed in PowerChart, Meets inpt- MediGold EIS-Y | 02012017, 02022017 | Inpatient, Inpatient | Inpatient, Inpatient | Approved,  | 2, 2 |
| 02012017 | 2017-02-01T08:11:34+00:00 |  | 000086155-01 | Polly | Bartholomew | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 02032017 | Denied | MediGold Essential Care | Fax | Inpatient | Inpatient | 02032017 | 02042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170202040 | S72302A | Unsp fracture of shaft of left femur, init for clos fx | ICD10 | 02142017 |  |  |  | 0 | 0 |  | 0 |  |  | 87-yr old to ED s/p fall.  Sustained hip fracture.  Ortho consulted.  No further clinical received pertaining to treatment., Add'l clincial received.  Underwent surgical repair of hip fracture. | 01272017, 01282017, 01292017, 01302017, 01312017, 02012017, 02022017, 02032017, 02042017, 02052017, 02062017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, , , , , , ,  | 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 |
| 02022017 | 2017-02-02T15:06:07+00:00 | FIN0253751617032 | 000000436-01 | HAROLD | WATSON | FAYETTE COUNTY MEM HSP C | 936633 | BRUCE L | AUERBACH | 1235139932 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02032017 | Denied | MediGold Classic Preferred | Reports | ACO | Inpatient | 02032017 | 02042017 | Standard | Cardiology - $11,288 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170202100 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 02032017 |  |  |  | 0 | 0 |  | 0 |  |  | Received per vista report dated 02/02/2017, Admit date 02/01/2017, Admit type: inpatient, Clinical documentation reviewed in PowerChart, patient presented with chest discomfort.  Had some ST elevation in inferior lead that did not reach criteria for an actual inferior infarction., Taken to the Cath Lab.  He had an EF of 70% with inferobasal akinesis., The left main shows diffuse disease., The LAD is occluded with a patent internal mammary., The circumflex is occluded with a patent vein graft with multiple patent old stents., The right coronary artery is occluded.  The vein graft to the right coronary artery was nearly occluded in the mid portion.  Vision Stent placed a 4.0 x 28 mm.  Patient had poor flow downstream to start and it was even worse afterwards.  He had some ST elevation before procedure was started and it was worse afterwards.  He had about an hour's worth of chest discomfort after the procedure., EKG today (02/02/17) still shows persistent inferior ST elevation., The potassium is 4.3.  The admission troponin peaked at 0.91.  The CPK went up to 50.2.  Cannot tell how much of this is a consequence of the old infarct and how much injury from _____ no reflow phenomenon., MEETS ACO CORONARY, MEETS ACO CORONARY, MEETS ACO CORONARY  $11 288.00 | 02012017, 02022017 | Inpatient, Inpatient | Inpatient, Inpatient | Approved,  | 2, 2 |
| 02022017 | 2017-02-02T15:44:01+00:00 |  | 000022214-01 | Janet | Schultz | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02032017 | Denied | MediGold Essential Care | Reports | Inpatient | Inpatient | 02032017 | 02042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170202108 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02032017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Clinical documentation reviewed in PowerChart | 01282017, 01292017, 01302017, 01312017, 02012017, 02022017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved,  | 6, 6, 6, 6, 6, 6 |
| 02022017 | 2017-02-02T16:24:22+00:00 |  | 000057753-01 | ANN | POWELL | CEN OH PRIMARY CARE PHYS | 916233 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02032017 | Denied | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 02032017 | 02042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170202115 | I249 | Acute ischemic heart disease, unspecified | ICD10 | 02032017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Clinical documentation reviewed in PowerChart | 01302017, 01312017, 02012017, 02022017 | Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 02022017 | 2017-02-02T12:03:37+00:00 |  | 000099629-01 | Jayne | Drenning-Brown | SELECT SPECIALTY HOSPITAL ZANESVILLE | 915731 |  | SELECT SPECIALTY HOSPITAL ZANESVILLE | 1861492217 | SELECT SPECIALTY HOSPITAL ZANESVILLE | 915731 | 1861492217 | SELECT SPECIALTY HOSPITAL ZANESVILLE | 1861492217 | Long Term Acute Care Hospital | LTACH | Concurrent Review | CONC |  | SELECT SPECIALTY HOSPITAL ZANESVILLE | 02032017 | Denied | MediGold Classic Preferred | Fax | Services Continued at Higher Level (LTACH) | Inpatient | 02032017 | 02042017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170202119 | J9690 | Respiratory failure, unsp, unsp w hypoxia or hypercapnia | ICD10 | 02032017 |  |  |  | 0 | 0 |  | 0 |  |  | Recommend LTACH Denial.  Patient is on vent  but not hemodialysis., 83-yr old admitted to LMH on 1/30/17 from SNF w/ bloody drainage around PEG & trach site  fever  A-fib w/ RVR.  H/o chronic respiratory failure s/p trach/peg placement 4 weeks ago after hospitalization for perforated bowel  PE and blood clot in L arm.  Patient went to SNF 2 weeks ago where she was on CPAP around the clock via trach.  Currently on full vent support.  Receiving blood for hgb 7.8.  GI consulted.  Diagnosis include: sepsis  UTI  GI bleed  anemia  metabolic alkalosis  hypotension  A-fib w/ RVR  chronic resp failure.  Remains on vent & tube feedings., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
