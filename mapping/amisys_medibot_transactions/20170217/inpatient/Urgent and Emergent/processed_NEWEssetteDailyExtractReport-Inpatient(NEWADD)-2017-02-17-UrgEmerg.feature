Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-02-17-UrgEmerg
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-02-17-UrgEmerg
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
#| 01312017 | 2017-01-31T16:07:41+00:00 |  | 000103714-01 | Carlton | Burt | OSU SURGERY LLC | 914625 | MARK W | ARNOLD | 1891748018 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 02172017 | Denied | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170201058 | C20 | Malignant neoplasm of rectum | ICD10 | 02172017 | 44146, 47120 | HEPATECTOMY, PART RESECT LIVER | CPT | 1, 1 | 1, 1 | Approved, Approved | 9, 9 | CPT | C4 | Waiting on initial Clinical information., Partial R and L Hepataectomy performed as prior authorized. | 02072017 | Inpatient | Inpatient | Approved  | 9 |
#| 02072017 | 2017-02-07T10:01:31+00:00 |  | 000070642-01 | Richard | Allton Sr | SALOMON, ALBERT M | 934725 | ALBERT M | SALOMON | 1902887789 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02172017 | Denied | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170207014 | R109 | Unspecified abdominal pain | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Clinical documentation reviewed in PowerChart | 02062017 | Inpatient | Inpatient | Approved  | 11 |
| 02062017 | 2017-02-06T13:45:01+00:00 |  | 000067111-01 | LESTER | HULSE | LICKING MEM INPATIENT ME | 936224 | KHANH V | DANG | 1922007111 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02172017 | Denied | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170209053 | J189 | Weakness | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | Hospital Notification Form rcv'd.  Awaiting clinicals., Admitting for pneumonia  AKI w/ worsening renal function  metabolic acidosis  worsening leukocytosis  hallucinations.  Tx includes IV atb's  IV steroids  Duonebs  Vit K IVP  O2 supplement., To date  9-day LOS | 02052017| Inpatient | Inpatient | Approved  | 12 |
| 02072017 | 2017-02-07T14:44:58+00:00 |  | 000037553-01 | DON | NEWLUN | ADENA MEDICAL GROUP LLC | 902974 | ZORAN | NAUMOVSKI | 1326041138 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02172017 | Denied | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170210056 | I959 | Hypotension, unspecified | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | 82 year old presented to the ED from ECF with c/o syncopal episodes  bp 79/50  hr 53 fluid bolus given post infusion 86/55 Dopamine drip started suprapubic cath was placed  d/t 600 cc retained urine.  the mbr also went into atrial fib  with RVR he was started on IV Cardizem | 02072017 | Inpatient | Inpatient | Approved | 11 |
| 02102017 | 2017-02-10T13:18:33+00:00 |  | 000080870-01 | W | Park | CAROL S NELTNER MD INC | 937243 | CAROLYN S | NELTNER | 1427055607 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02172017 | Denied | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02172017 | 02182017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170210088 | G5600 | Other cervical disc degeneration, cervicothoracic region | ICD10 | 02172017 | 22612, 22614, 63047, 63048, 22842, 22633, 22853, 61783, 20930, 20936, 22600 | ARTHRODESIS;POSTERIOR,CERVICAL BELOW C2 SEGMENT, GRAFT AND/OR FIXATION | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | CPT | C4 | Clinical documentation reviewed in PowerChart | 02142017 | Inpatient | Inpatient | Approved | 3 |
| 02082017 | 2017-02-08T15:07:35+00:00 |  | 000086630-01 | Shirley | Herman | S DAYTON ACUTE CARE CNSL | 932325 | SIVAPRASAD | NALLURI | 1558619668 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02172017 | Denied | MediGold Essential Care | Fax | Inpatient | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170211003 | 3485 | Dorsalgia, unspecified | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02072017 | Inpatient | Inpatient |  | 10 |
| 02132017 | 2017-02-13T09:44:25+00:00 |  | 000011596-01 | GEORGE | DANDRIA | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02172017 | Denied | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170213020 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Clinical documentation reviewed in PowerChart | 02102017| Inpatient | Inpatient | Approved  | 7 |
| 02132017 | 2017-02-13T10:01:45+00:00 |  | 000079210-01 | Barbara | Kuhns | MED STAFF SERVICES LLC | 907313 | CHARLES N | ONWE | 1831124460 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 02172017 | Denied | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170213062 | J111 | Flu due to unidentified influenza virus w oth resp manifest | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02102017 | Inpatient | Inpatient |  | 7 |
| 02132017 | 2017-02-13T12:59:10+00:00 |  | 000071775-01 | Sharon | Key | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02172017 | Denied | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170213089 | N111 | Disorder of kidney and ureter, unspecified | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | S/W Heather in UR to request initial Clinicals.  Will fax clinicals., Mbr discharged 2/15 to home.  LOS: 5 days, Bilateral Obstructing Ureteral caluli creating massive hydronephrosis and hydroureter. UTI.   AKI. 2/11 Cystoscopy with bilateral stone removal and stent placement.  IV ATB's. | 02102017 | Inpatient | Inpatient | Approved  | 6 |
| 02132017 | 2017-02-13T13:07:36+00:00 |  | 000116025-01 | Isabelle | Mcclure | KHN IP MED | 944000 | NIRANSHINY | RAHUNANTHAN | 1477813392 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02172017 | Denied | MediGold Flexible Choice | Fax | Inpatient | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170213109 | R0602, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02122017 | Inpatient | Inpatient |  | 4 |
| 02132017 | 2017-02-13T15:14:52+00:00 | FIN 025049300-7044 | 000094208-01 | Bruce | Hall | ORTHOPEDIC ONE INC | 907140 | ROBERT T | GORSLINE | 1003983743 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02172017 | Denied | MediGold Essential Care | Fax | EIS | Inpatient | 02172017 | 02182017 | Standard |  | Yes |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170213137 | S82871K | Displaced pilon fx right tibia, subs for clos fx w nonunion | ICD10 | 02172017 | 27724, 20902 | OBTAIN BONE GR.,ANY AREA, LARGE | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 | Clinical documentation reviewed in PowerChart, Notified per mt carmel vista report dated 02.17.17 that pt presented for planned procedure on 02.16.17, 02.16.17 To OR for, PROCEDURE:, Repair  nonunion  distal third tibia fracture on the right  including obtaining autograft  27724., POSTOPERATIVE DIAGNOSIS:, Nonunion  distal third tibia fracture on the right., MEETS EIS, MEETS EIS  Y  65000 | 02162017 | Inpatient | Inpatient | Approved  |  2 |
| 02142017 | 2017-02-14T09:42:22+00:00 | FIN0250533707045 | 000045705-01 | DONALD | HARP | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02172017 | Denied | MediGold Classic Preferred | Reports | ACO | Inpatient | 02172017 | 02182017 | Standard | Cardiology - $11,288 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170214026 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Notified per mt carmel vista report dated 02/14/17 that pt presented for admission on 02/13/17 thru ER with c/o chest pain.  Pt is admitted in Observation status, 82 year old male with a hx of CAD  cardiac stents  presenting to the ED for evaluation of chest pain. The patient states this morning around 0400 he started having chest pain that radiated up into his mouth. He states everything from his chest to his mouth was aching. He reports he had some mild right arm pain at that time. He states over the weekend he had nausea  dizziness  increased SOB with exertion  and increased fatigued. He reports his chest pain is pretty much gone but his mouth feels dry. He states his current symptoms feel similar to when he needed a stent placed. His most recent stent was placed in 2014. He reports he is not sure if he had indigestion this morning but took a Tums and aspirin with relief. He states he has a chronic productive cough., ASSESSMENT:, The patient had a non-ST elevation infarct.  My guess is that the culprit is a small marginal branch.  I cannot exclude that some more rather a large epicardial blood vessel.  I have recommended cardiac catheterization and possible intervention.  He understands about the increased risk of renal failure because of his underlying renal insufficiency.  I have stopped Valsartan.  I have started him on fluids as of 8 o'clock tomorrow morning.  I have added Brilinta., 82-year-old Caucasian male  presented as transfer from Diley ridge medical center with chest pain.  Patient has significant history of CAD and stent placement in past.  Noted to have elevated Troponin  admitted with diagnosis of NSTEMI.  Started on heparin drip and other cardiac meds  cardiology consulted.  Noted to have creatinine of 2.5 with known CKD.  Renal consulted as high risk for CIN.  After discussing risk and benefits  cardiac cath performed on 2/15/17  showed no major occlusion  possible small embolism or plaque rupture.  Cardiology did not recommend any change in meds and cleared for discharge next day.  Creatinine stable on discharge., MEETS ACO CORONARY Y, MEETS ACO CORONARY  Y     112880 | 02132017 | Inpatient | Inpatient  | Approved  | 4 |
| 02122017 | 2017-02-12T11:47:45+00:00 |  | 000028840-01 | MARY | FLOWERS | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02172017 | Denied | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170214030 | M6281 | Muscle weakness (generalized) | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | Presented with weakness of lower extremities.  Developed sudden decrease of LOC on 2/11 with sats dropping below 90. Temp 102.9  Right facial drop.Stroke alert called. Placed on BiPap. Imagine showed no intracranial process. CXR- L Lung base infilatrate. UA+. IV ATB's  IVF. NPO until Dysphagia screen completed. | 02092017 | Inpatient | Inpatient | Approved  | 7 |
| 02142017 | 2017-02-14T09:45:37+00:00 |  | 000103384-01 | Jenny | Andrews | MOUNT CARMEL WEST PHYS | 936924 | CHARLES R | HOLDEN | 1093713133 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02172017 | Denied | MediGold Classic Preferred | Fax | EIS | Inpatient | 02172017 | 02182017 | Standard |  | Yes |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170214035 | I6521 | Occlusion and stenosis of right carotid artery | ICD10 | 02172017 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 | Clinical documentation reviewed in PowerChart, Notified per mt carmel vista report dated 02/16/17 that pt presented for planned procedure on 02/15/17, 02/15/17 To OR for, OPERATIVE PROCEDURE:, Right carotid endarterectomy with patch angioplasty., POSTOPERATIVE DIAGNOSIS:, High-grade right carotid stenosis., MEETS EIS, MEETS EIS - Y  $6 5000 | 02152017 | Inpatient | Inpatient | Approved  |  2 |
| 02132017 | 2017-02-13T09:03:15+00:00 |  | 000044334-01 | PAMELA | TRENT | THE OH STATE UNIVERSITY | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 02172017 | Denied | THE TIMKEN COMPANY | Fax | Inpatient | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170214060 | A419 | Nausea with vomiting, unspecified | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | Worsening SOB and cough  Asthma exacerbation 2/2 viral infection. Febrile  tachycardic. Tx:  3L O2  IV ATB's  Prednisone  slow to respond to tx. | 02112017 | Inpatient | Inpatient | Approved  | 4 |
| 02132017 | 2017-02-13T12:18:16+00:00 |  | 000047682-01 | MARY | UHL | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02172017 | Denied | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170214073 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | Presented w fatigue. Found to have + C-Diff and Troponins trending upward w peak of 3.110. EKG with positive Ischemic changes.Taken emergently to the Cath lab.  Hep gtt x 3 days  NTG x 2 days  NA Bicarb x 1 day. Recent admit for RLE Emergent Embolectomy., Phys Rev completed for the Medical Director to make determination due to readmission., Medical Director determined Inpatient level of services | 02102017 | Inpatient | Inpatient | Approved  | 6 |
| 02132017 | 2017-02-13T13:03:54+00:00 |  | 000016329-01 | WANDA | GRIFFITH | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02172017 | Denied | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170214101 | I4892 | Chest pain, unspecified | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | Presented with Aflutter. Placed on Hep gtt and Cardizem gtt through review date of 2/13. Placed on Insulin gtt on 2/11 and continues through 2/13.  LHC on 2/13. | 02102017 | Inpatient | Inpatient | Approved  | 6 |
| 02132017 | 2017-02-13T15:01:00+00:00 |  | 000091219-01 | Raenell | Cline | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02172017 | Denied | MediGold Essential Care | Fax | Observation | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170214120 | I214, R079 | Chest pain, unspecified | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | 67 year old presented to the ED with c/o right shoulder and neck pain.  Admitted with atypical chest pain  troponin 014  ventricular  paced rhythm w/o any acute ST changes on EKG. NSTEMI  mbr also dx with UTI   and generalized weakness Discharge recommendations was subacute/SNF the mbr was discharged in stable condition to the SNF on 02/14/2017 | 02112017 | Observation | Observation| Approved  | 4 |
| 02142017 | 2017-02-14T11:18:31+00:00 |  | 000073457-01 | James | Sewall Jr | 24 ON PHYSICIANS PC | 905470 | KOMBIAN | GBARUK | 1235171802 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 02172017 | Denied | MediGold Essential Care | Fax | Inpatient | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170215035 | I2109 | STEMI involving oth coronary artery of anterior wall | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02132017 | Inpatient | Inpatient |  | 3|
| 02142017 | 2017-02-14T10:01:25+00:00 |  | 000091342-01 | Rueben | Peterson | FAM PHYS OF SPRINGFIELD | 907236 | ROBERT E | KNEISLEY | 1679598163 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02172017 | Denied | MediGold Essential Care | Fax | Observation | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170215058 | F0390 | Fall same lev from slip/trip w/o strike against object, init | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | 88 year old male represented the ED after falling over a wheelchair.  the mbr sustain a laceration to the head. LOC unknown. CM consulted for placement mbr unable to return home w/o 24/7 hr supervision. EKG NSR PT/OT consulted | 02132017 | Observation | Observation | Approved  | 3 |
| 02142017 | 2017-02-14T15:49:45+00:00 |  | 000095212-01 | Leota | Graf | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02172017 | Denied | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170215078 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | L TKA | 02132017 | Inpatient | Inpatient | Approved | 4 |
| 02152017 | 2017-02-15T07:14:12+00:00 |  | 000065104-01 | Carl | Salyer | LICKING MEM INPATIENT ME | 916171 | ABDUL K | ELHABYAN | 1104847144 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02172017 | Denied | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170215088 | 4870 | INFLUENZA WITH PNEUMONIA | ICD9 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | Severe deconditioned with AMS. Hypoxic at 89% on 2L. Persistently Hypotensive 96/39. Lab: WBC 1  Plat 30  hgb 7.4 + Influenza A.  Troponin 5.56 5.73 w/ dx of NSTEMI.  Unable to anticoagulate due to Thrombocytopenia. Tx with Pressor support  PRBC'  IVF  PT/OT  HD | 02132017 | Inpatient | Inpatient | Approved  | 4 |
| 02152017 | 2017-02-15T15:40:11+00:00 | 252186467034 | 000047081-01 | NANCY | CHARLES | CEN OH UROLOGY GRP INC | 936163 | EVAN B | COHN | 1164463451 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02172017 | Denied | MediGold Classic Preferred | Reports | EIS | Inpatient | 02172017 | 02182017 | Standard |  | Yes |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170215091 | N200 | Calculus of kidney | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Notified per mt carmel vista report dated 02/15/17 that pt presents for planned procedure on 02/14/17, 02/14/17 To OR for, OPERATION:, 1.  PCNL percutaneous nephrostomy of a 3 cm stone.  , 2.  Placement of a nephrostomy tube., 3.  Nephrostogram., INDICATIONS:, Very large obstructing stone., MEETS EIS  y  65000, MEETS  EIS  Y  65000 | 02142017 | Inpatient | Inpatient | Approved | 3 |
| 02152017 | 2017-02-15T11:19:58+00:00 |  | 000088300-01 | John | Staten | S DAYTON ACUTE CARE CNSL | 928230 | CARLOS A | JORDAN | 1972786630 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 02172017 | Denied | MediGold Essential Care | Fax | Inpatient | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170216038 | R0602 | Shortness of breath | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02142017 | Inpatient | Inpatient |   | 3 |
| 02152017 | 2017-02-15T14:39:53+00:00 |  | 000086882-01 | Arnold | Strausbaugh | SPRINGFIELD CTR FOR FAM | 913218 | KEVIN | MACY | 1194763193 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02172017 | Denied | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170216061 | R0602 | Unspecified abdominal pain | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | 92 year old presented to the ED from PCP office with c/o sob.  The mbr has a large stones in the bladder and was seeing his pcp for clearance for cystoliitholapaxy when pain and sob came on. SOB likely d/t pain.  Mbr was cleared for surgery but emergency came up in the OR.  The mbr was discharged on 02/16/2017 and will scheduled procedure as outpt. | 02142017 | Observation | Observation | Approved  | 3 |
| 02172017 | 2017-02-17T09:31:50+00:00 | 251562327047 | 000016736-01 | DOLLY | DAVIS | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02172017 | Denied | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170217015 | F0390 | Unspecified dementia without behavioral disturbance | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Notified per mt carmel vista report dated 02/17/17 that pt was admitted to Inpatient HOSPICE on 02/16/17., Per power chart review Pt EXPIRED on 02/17/17 at 00:23, MEDIGOLD to pay as SECONDARY | 02162017 | Inpatient | Inpatient | Approved  | 2 |
