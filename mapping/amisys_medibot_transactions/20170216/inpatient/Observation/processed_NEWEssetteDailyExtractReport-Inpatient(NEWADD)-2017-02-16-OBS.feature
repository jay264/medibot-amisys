Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-02-16-OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-02-16-OBS
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
And in the "Certification" page I enter "OB" into the "Auth Type" field
And the test pauses for "2" seconds
And in the "certification" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image and save the variable
And the test pauses for "3" seconds
And I press "Control + S"
And the test pauses for "3" seconds

And in the "certification" page I should see the "loaded_blue_sidebar" image
And the test pauses for "3" seconds
And in the "Functions Menu" page I click on "Authorized Svcs"
And the test pauses for "3" seconds
And in the "authorized_services" page I should see the "authorized_services_header" image
And the test pauses for "2" seconds
And in the "authorized_services" page I enter "<care_date>" into the "dates_begin_requested" image
And the test pauses for "2" seconds
And in the "authorized_services" page I add the "<auth_approval_days>" to the "<care_date>" and put the result in the "dates_end_requested" image
And the test pauses for "2" seconds
And in the "authorized_services" page I enter "<care_date>" into the "dates_begin_approved" image
And the test pauses for "2" seconds
And in the "authorized_services" page I add the "<auth_approval_days>" to the "<care_date>" and put the result in the "dates_end_approved" image
And the test pauses for "2" seconds
And in the "authorized_services" page I enter "<auth_approval_days>" into the "how_many_requested" image
And the test pauses for "2" seconds
And in the "authorized_services" page I enter "<auth_approval_days>" into the "how_many_authorized" image
And the test pauses for "2" seconds
And I use the sub class "<sub_class>" to determine what location to enter into the location image
And the test pauses for "2" seconds
And in the "authorized_services" page I enter "M" into the "claim_type" image
And the test pauses for "2" seconds
And in the "authorized_services" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image
And the test pauses for "2" seconds
And I use the sub class "<sub_class>" to determine what count to enter into the count image
And the test pauses for "3" seconds

And in the "authorized_services" page I should see the "loaded_sidebar" image
And the test pauses for "3" seconds
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
And in the "provider_affiliation_list" page I enter "HM" into the "pg_search_cell" image
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
And the test pauses for "3" seconds
And in the "provider_affiliation_list" page I click on the "return_lookup" image
And the test pauses for "3" seconds
And I press "Control + S"
And the test pauses for "3" seconds
And I edit myself if I am a NONPAR
And the test pauses for "3" seconds

And I input the notes if any are contained in "<notes>"
And the test pauses for "5" seconds

And I press "Control + Q"
And the test pauses for "5" seconds
And I press ENTER graphically
And the test pauses for "5" seconds
And I close "Internet Explorer"

	Examples:
		| requested_date  | military_date      | other_reference_# |	member_id | member_first_name |	member_last_name | practice_name | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name  | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	| servicing_provider_npi_# |	sub_class  | sub_class_code | type  |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm | auth_for_payment | days_used_prior | dc | denc_date | mds_date | nomnc_date | total_days | total_skilled_days | auth_type      | auth_status    |	auth_number |	diagnosis_code     |	diagnosis                                          			|	diagnosis_type |	auth_modified_date | service_code       | service_description                                                    | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                  | care_date | actual_level_of_care | approved_level_of_care | determination | auth_approval_days |
| 01312017 | 2017-01-31T16:03:44+00:00 |  | 000061008-01 | LINDA | FRIESNER | GENERAL SURG ASSOC INC | 910801 | MARGARET S | SAWYER | 1972722494 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02162017 | Denied | MediGold Classic Preferred | Fax | Observation | Inpatient | 02162017 | 02172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170201018 | C50412 | Malig neoplasm of upper-outer quadrant of left female breast | ICD10 | 02162017 | 19303, 38792, 38525 | BIOP/EXC DEEP AXILLARY NODE | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 2, 2, 2 | CPT | C4 | Total L Mastectomy performed as prior authorized with 3 JP drains. Discharged to home next day with no needs. | 02062017 | Observation | Observation | Approved  | 2 |
| 02012017 | 2017-02-01T08:09:40+00:00 |  | 000086703-01 | Velma | Haga | MED STAFF SERVICES LLC | 907313 | CHARLES N | ONWE | 1831124460 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 02162017 | Denied | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 02162017 | 02172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170202011 | R079 | Chest pain, unspecified | ICD10 | 02162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |
| 02012017 | 2017-02-01T09:18:42+00:00 |  | 000101588-01 | Eileen | Bentley | HOSP SVC MED GRP OF MARY | 918823 | DARREN J | SOMMER | 1578512356 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 02162017 | Denied | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 02162017 | 02172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170202103 | D649 | Anemia, unspecified | ICD10 | 02162017 |  |  |  | 0 | 0 |  | 0 |  |  | Awaiting add'l clinicals, PMH: ESRD on HD  COPD on home O2.  3-day LOS  for patient w/ rectal bleeding and diarrhea.  H/o hemorrhoids & on Coumadin.  Transfused 2 UPRBC's & started Flagyl.  DC'd to home w/ HHC., The additional clinical documentation has been submitted to the Medical Director for review and upon review it was determined to meet Observation level of services.  2nd OBS letter faxed to facility. | 01312017 | Observation | Observation | Approved| 3 |
| 01312017 | 2017-01-31T13:32:10+00:00 |  | 000047918-01 | BURTON | ROSS | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02162017 | Denied | MediGold Classic Preferred | Fax | Observation | Inpatient | 02162017 | 02172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170207087 | R079 | Chest pain, unspecified | ICD10 | 02162017 |  |  |  | 0 | 0 |  | 0 |  |  | Awaiting intial Clinicals, Clinical review completed. CP  elevated troponins up to 2.38. LHC completed. Discharged on 2/1/17. LOS 2 days. Approved Observation., Transfered to Mt Carmel on 2/1/17, Request received to review for Inpatient.  Physician Review completed and sent to the Medical Director for determination., Medical Director determined Observation | 01302017| Observation | Observation | Approved  | 3 |
| 02102017 | 2017-02-10T08:54:45+00:00 | FIN0250210167040 | 000032777-01 | ISABELL | CAIN | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02162017 | Denied | MediGold Classic Preferred | Reports | Observation | Inpatient | 02162017 | 02172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170210018 | I4891 | Unspecified atrial fibrillation | ICD10 | 02162017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 02092017 | Observation | Observation | Approved | 7|
| 02102017 | 2017-02-10T10:26:43+00:00 | FIN0174857137040 | 000097299-01 | Robert | Beck | HMP OF OHIO PC | 923291 | BASHAR | ALAWAD | 1396024121 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02162017 | Denied | MediGold Essential Care | Reports | Observation | Inpatient | 02162017 | 02172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170210040 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 02162017 |  |  |  | 0 | 0 |  | 0 |  |  | Received per vista report dated 02/10/2017, Admit date 02/09/2017, Admit type: inpatient, Clinical documentation reviewed in PowerChart, Clinical documentation reviewed in PowerChart, ***RECENT INPT ADMISSION 01/18/2017- 02/02/2017***, 64-year-old discharged from our hospital on 02/02/2017 and went to Select for continuation of his care and sent back to us today about a week later with drop of hemoglobin to around 5 today. He did receive 2 units of PRBC at the Select facility. Chronic respiratory failure. Currently  he is on the ventilator. S/P tracheostomy during previous admission., hgb 6.3, 2/10- Transfuse 2 units PRBC. Continue protonix., GI c/s- change to BID PPI.  follow h/h and tranfuse as needed. If overt bleeding will reconsider repeating a portion of his workup; otherwise keep on a PPI  iron., 2/11- Hgb increasing- likely equilibrating from transfusions. ferritin quite elevated- suspect a large component of anemia is from anemia of chronic disease. hgb 8.5, 2/12- hgb 8.8, 2/13 hgb 8.2 possible d/c to select today., 2/14- hgb 6.6 Will recheck this afternoon. If remains low  may proceed with push EGD tomorrow for evaluation and to reevaluate AVMs seen last time., Repeat hgb 8.1back at baseline. Continue to trend., Clinical documentation reviewed in PowerChart, 2/15 hgb 9  -Discharged, APPROVED OBS. | 02092017 | Observation | Observation | Approved | 7 |
| 02072017 | 2017-02-07T13:06:10+00:00 |  | 000033512-01 | REBECCA | TODD | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02162017 | Denied | MediGold Classic Preferred | Fax | Observation | Inpatient | 02162017 | 02172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170210049 | I959 | Syncope and collapse | ICD10 | 02162017 |  |  |  | 0 | 0 |  | 0 |  |  | Spoke with Heather in UR.  Mbr discharged same day under Observation. | 02072017 | Observation |  |  | 1 |
| 02072017 | 2017-02-07T16:42:55+00:00 |  | 000004977-01 | FREDERICA | ENDICOTT | OHIOHEALTH PHYS GRP | 948319 | ERIC | EGNOT | 1942542006 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 02162017 | Denied | MediGold Classic Preferred | Fax | Observation | Inpatient | 02162017 | 02172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170210070 | R935 | Abn findings on dx imaging of abd regions, inc retroperiton | ICD10 | 02162017 |  |  |  | 0 | 0 |  | 0 |  |  | Received notification that on 02/08/17 member was moved to OBServation status., Discharge date rec'd from Ohio Health via fax | 02062017 | Observation | Observation | Approved| 4 |
| 02132017 | 2017-02-13T09:28:12+00:00 |  | 000083699-01 | Veta | Welsh | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 02162017 | Denied | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 02162017 | 02172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170213074 | W19XXXD | Unspecified fall, subsequent encounter | ICD10 | 02162017 |  |  |  | 0 | 0 |  | 0 |  |  | Admitted for knee pain s/p fall.  CT scan showed avulsion or fracture of R patella.  Knee joint was aspirated and injected with corticosteroid.  Also found to have +UTI and treated with IV atb's.  Working with PT/OT. | 02112017 | Observation | Observation | Approved | 5 |
| 02102017 | 2017-02-10T15:14:59+00:00 |  | 000011912-01 | CLARENCE | RAVER | COMMUNITY HSPIST LLC | 947374 | ANOKH | KONDRU | 1003158031 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02162017 | Denied | MediGold Classic Preferred | Fax | Observation | Inpatient | 02162017 | 02172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170213076 | I509 | Heart failure, unspecified | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | Positive Influenza A. No evidence of acute CHF exacerbation per Cardio consult. IV Levaquin changed to PO on 2/13. Troponins mildly elevated  .293  .410.  EKG with A-fib w RVR.  DC home. LOS: 4 days | 02102017 | Observation | Observation | Approved  | 5 |
| 02132017 | 2017-02-13T10:56:04+00:00 |  | 000073673-01 | Donna | Goins | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 02162017 | Denied | MediGold Classic Preferred | Fax | Observation | Inpatient | 02162017 | 02172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170213110 | R079 | Chest pain, unspecified | ICD10 | 02162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |
| 02142017 | 2017-02-14T08:43:26+00:00 | FIN0265369117046 | 000034901-01 | MICHAEL | BUCHART | CEN OH PRIMARY CARE PHYS | 916233 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02162017 | Denied | MediGold Classic Preferred | Reports | Observation | Inpatient | 02162017 | 02172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170214007 | I82629 | Acute embolism and thrombosis of deep vn unsp up extrem | ICD10 | 02162017 |  |  |  | 0 | 0 |  | 0 |  |  | Received per vista report dated 02/14/2017, Admit date 02/13/2017, Admit type: observation, Clinical documentation reviewed in PowerChart, Clinical documentation reviewed in PowerChart, *RECENT INPT ADMISSION 01/24/2017- 02/01/2017*, Admitted to SAH 1/24 to 2/1/17 for pseudomonas pneumonia and empyema. PICC placed 1/30/17 for 4-6 weeks IV Zosyn., presented to SAH  02/13/2017 as direct admit at the request of Dr. Emerick due to new finding today in the SAH vascular testing lab of PICC line associated DVT of the RUE to the subclavian vein., 2/14- IR CONSULT- Good color and pulses in the RUE without overt swelling. Oral anticoagulation for 6 mos. recommended. A tunneled PICC can be placed. Mr. Buchart prefers this be done by Dr. Pannu in an outpatient setting. The PICC was removed., will be started on Eliquis with the first dose to be given tonight., CT venogram= clot extends into the brachiocephalic  and there is evidence of Pulm embolism., 2/15- CT chest with contrast pending to further characterize degree and burden of pulmonary emboli., 2/16- CTA of the chest does confirm acute pulmonary embolism., 2-D echocardiogram shows a preserved left ventricle function and also does not show any evidence of right heart strain., patient will be getting a tunneled PICC line today as outpatient and will continue the Zosyn after that., APPROVED OBS. | 02132017 | Observation | Observation | Approved  | 4 |
| 02142017 | 2017-02-14T09:31:14+00:00 | FIN0251562327044 | 000016736-01 | DOLLY | DAVIS | ARABELLA HRT LLC | 900697 | JYOTI R | CHAWLA | 1528159241 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02162017 | Denied | MediGold Classic Preferred | Reports | Observation | Inpatient | 02162017 | 02172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170214018 | A419 | Sepsis, unspecified organism | ICD10 | 02162017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Notified per mt carmel vista report dated 02/14/17 that pt presented for admission to ER on 02/13/17 with c/o seizure.  Pt is admitted in Observation Status. | 02132017 | Observation | Observation | Approved  | 4 |
| 02142017 | 2017-02-14T09:39:34+00:00 | FIN0252492897044 | 000047781-01 | VIRGINIA | WHITT | FAYETTE COUNTY MEM HSP C | 936633 | BRUCE L | AUERBACH | 1235139932 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02162017 | Denied | MediGold Classic Preferred | Reports | Observation | Inpatient | 02162017 | 02172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170214022 | I4892 | Heart failure, unspecified | ICD10 | 02162017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, HOSPITAL COURSE:, The patient presented with abdominal pain  postprandial.  She also was short of breath.  She had atrial fibrillation., , I have seen her over the years with paroxysmal atrial fibrillation.  She has had nausea with almost every medication I have ever put her on.  She has been intolerant of multiple oral anticoagulants., , GI saw her and did endoscopy and identified no abnormality.  They commented that if the EGD was negative  they would order a gastric emptying study and also mentioned that the patient needed a colonoscopy as part of a screening routine., , The potassium is 3.5  hemoglobin 10.4 and BNP 230.  The heart rate is in the high 90s to low 100s.  The blood pressure is fine.  The chest x-ray showed nothing acute., , I discontinued sotalol.  I am going to not plan on any efforts at maintaining sinus rhythm.  I do not think she has heart failure and symptoms of volume excess., CLINICALS REVIEWED IN POWER CHART DO NOT SUPPORT INPATIENT ADMISSION STATUS.  PT IS LISTED AS OBSERVATION  ATTENDING PHYSICIAN WROTE AN INPATIENT ORDER.  WILL SEND PM CHANGE FORM FOR OBSERVATION ADMISSION. | 02132017 | Observation | Observation | Approved  | 3 |
| 02132017 | 2017-02-13T16:15:39+00:00 |  | 000112213-01 | Mary | Hensley | SOUND INPATIENT PHYS OF | 930150 | SWATHI | DATLA | 1013222603 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02162017 | Denied | MediGold Classic Preferred | Fax | Observation | Inpatient | 02162017 | 02172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170214118 | A419 | Sepsis, unspecified organism | ICD10 | 02162017 |  |  |  | 0 | 0 |  | 0 |  |  | Call placed to Tammy @ KMC CM office 937 395 8418- MBR status is OBS. Auth updated. | 02112017| Observation | Observation |   | 4 |
| 02152017 | 2017-02-15T10:33:11+00:00 | 174889777045 | 000093606-01 | Valerie | Snider | ORTHOPEDIC ONE INC | 917927 | TERRY T | FOWLER | 1447474705 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02162017 | Denied | TRINITY HEALTH | Fax | Observation | Inpatient | 02162017 | 02172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170215027 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 02162017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, LAST INPATIENT ADMISSION FOR THIS PATIENT IS 02/08/17 FOR LT THA., Notified per mt carmel vista report dated 02/15/17 that pt presents for admission as a direct admit per direction of Ortho Phy.  , Pt recently on 02/08/2017 had a left total hip replacement.  She had an anterior approach on the left thigh.  She was subsequently discharged in stable condition; however  yesterday evening while performing normal activities of daily living  the patient heard and felt a pop along her left hip  which resulted in pain in the lateral aspect of her proximal thigh.  This pain subsequently got worse and the patient decided to follow up with Dr. Fowler today  in which case it was discovered that the patient had a left greater trochanter fracture in the setting of her recent total hip arthroplasty.  Because of this  the patient was directly admitted to the hospital for open reduction and internal fixation of her fracture.  The patient has also noticed some significant swelling with the left lower extremity of her left leg.  This is most bothersome at the mid-calf and lower.  Otherwise  the patient denies any numbness or tingling about the left lower extremity.  Again  this was an atraumatic event happened while performing her normal activities., 02/15/17 To OR for, PROCEDURE:, Open reduction and internal fixation of left greater trochanter fracture., POSTOPERATIVE DIAGNOSIS:, Left greater trochanteric periprosthetic hip fracture.  , OBSERVATION ADMISSION ORDER PLACED ON CHART POST OP PER DR FOWLER., CONTINUE OBSERVATION AS PT IS A 30 DAY READMIT | 02142017 | Observation | Observation | Approved  | 3 |
| 02152017 | 2017-02-15T10:53:05+00:00 | FIN0260381237045 | 000058722-01 | TONI | EDINGTON | HMP OF OHIO PC | 904484 | BAHADUR | SHAH | 1912010547 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02162017 | Denied | MediGold Classic Preferred | Reports | Observation | Inpatient | 02162017 | 02172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170215036 | J449, N390 | Urinary tract infection, site not specified | ICD10 | 02162017 |  |  |  | 0 | 0 |  | 0 |  |  | Received per vista report dated 02/15/2017, Admit date 02/14/2017, Admit type: inpatient, Clinical documentation reviewed in PowerChart, Clinical documentation reviewed in PowerChart, 80-year-old Caucasian female with history of COPD and history of pulmonary embolism who is on Coumadin and she is chronically on oxygen at home.  She presented to Diley Ridge facility for evaluation.  She was evaluated there.  She was treated.  She was then transferred here for admission because of hypoxemia and low O2 saturation.  She had received treatment over there for shortness of breath.  Her INR was found to be elevated at 5.52.  She had a UA C and S done and it was positive for UTI.  She had received antibiotics and breathing treatments and then she was transferred here for admission., Chest x-ray was obtained and it was unremarkable., sodium  potassium and electrolytes were normal.  BUN and creatinine were normal.  White cell count was normal  hemoglobin 11.8 g/dL  platelet count was normal  INR was 5.52., 2/15-Acute exacerbation of chronic obstructive pulmonary disease : Continue with the current management with IV steroids  IV antibiotic and breathing treatment as well as supplemental oxygen. Urinary tract infection  which was present on admission : Continue with the current IV antibiotic., 2/16- discharge home., APPROVED OBS. | 02142017 | Observation | Observation | Approved  | 3 |
| 02142017 | 2017-02-14T11:23:56+00:00 |  | 000108044-01 | Donna | Hill | EASTERN HILLS INTL MED I | 921533 | DAVID G | WILSON | 1750394730 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 02162017 | Denied | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 02162017 | 02172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170215069 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 02162017 |  |  |  | 0 | 0 |  | 0 |  |  | Admitted for hyponatremia  weakness  recurrent falls.  Does not meet Inpatient criteria., 2-day LOS | 02132017 | Observation | Observation | Approved  | 3 |
| 02142017 | 2017-02-14T15:57:21+00:00 |  | 000091044-01 | Bryan | Tatman | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02162017 | Denied | MediGold Classic Preferred | Fax | Observation | Inpatient | 02162017 | 02172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170216002 | R079 | Chest pain, unspecified | ICD10 | 02162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |
| 02152017 | 2017-02-15T11:55:34+00:00 |  | 000115071-01 | Donna | Penley | 24 ON PHYSICIANS PC | 905470 | KOMBIAN | GBARUK | 1235171802 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 02162017 | Denied | MediGold Classic Preferred | Fax | Observation | Inpatient | 02162017 | 02172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170216040 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 02162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |
| 02162017 | 2017-02-16T11:15:21+00:00 | 251699797040 | 000042998-01 | CHARLES | GEIGER | MOUNT CARMEL HLTH PRVDRS | 936795 | F KEVIN | HACKETT | 1215990726 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02162017 | Denied | MediGold Classic Preferred | Reports | Observation | Inpatient | 02162017 | 02172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170216054 | I4891 | Unspecified atrial fibrillation | ICD10 | 02162017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Notified per mt carmel vista report dated 02/16/17 that pt presents for planned procedure on 02/15/17, 02/15/17 To EP Lab for Ablation, PT IS ADMITTED IN OBSERVATION STATUS | 02152017 | Observation | Observation | Approved  | 2 |
