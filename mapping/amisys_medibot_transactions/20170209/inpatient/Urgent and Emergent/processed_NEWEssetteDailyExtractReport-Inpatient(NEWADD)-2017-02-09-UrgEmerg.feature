Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-02-09-UrgEmerg
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-02-09-UrgEmerg
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
		| 02012017 | 2017-02-01T14:09:48+00:00 | FIN0260938707030 | 000018384-01 | ALICE | BRADBURY | HMP OF OHIO PC | 947310 | KARIM T | ATTIA | 1801139217 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02092017 | Denied | MediGold Classic Preferred | Reports | INPT | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170201054 | 78552.0 | SEPTIC SHOCK | ICD9 | 02162017 |  |  |  | 0 | 0 |  | 0 |  |  | Received per vista report dated 01/31/2017, Admit date 01/30/2017, Admit type: inpatient, Clinical documentation reviewed in PowerChart, ***Recent inpt admission 12/28/2017-01/30/2017***, 84-year-old Caucasian female with past medical history significant for COPD with chronic hypoxemic respiratory failure on 2 L oxygen  recently increased to 4  who was recently discharged from the hospital after an episode of COPD exacerbation secondary to likely a viral upper respiratory tract infection.  She did not receive any antibiotics at that time and her chest x-ray did not show any infiltrates. The patient was cleared by Pulmonary Service and was discharged in stable condition on steroids back to extended care facility.  She was on oxygen at that time 2 to 3 L.  The patient began having fevers  as well as crampy abdominal pain and diarrhea.  She also felt like she was having shortness of breath and was coughing  bringing up thick mucus. She was brought into the ED and was found to be hypotensive requiring 3 L of IV fluids with continuous hypotension.  She was also found febrile with a T-max of 100.6 in addition to tachycardia and tachypnea.  was admitted to the ICU for further monitoring., bun 14 cr 0.63 wbc 18.1 hgb 9.2, 1/31- Was transferred out of the ICU.  C. Diff antigen negative.  Improved with fluids.  Continue broad spectrum antibiotics with Vancomycin/Zosyn.  Follow blood cx.  , 2/01-Cont broad spectrum antibiotics with Vancomycin/Zosyn till we have Urine c/s. blood cultures- negative. On po steroid as per pulm. Essential hypertension.  resume Cardizem but continue to hold HCTZ for today-- reassess in am., 2/02- was resting comfortably on her CPAP. She is no more short of breath and she was yest., 2/03- She states that her breathing is not quite back at his baseline. She still feels short of breath. continue prednisone 40 mg by mouth daily. continue patient on all of her bronchodilators. severe lung disease- currently DO NOT RESUSCITATE CC-  should concentrate on just making sure that she is comfortable., 2/06-  Urine c/s -- VSE. palliative consult., 2/07-cxr 2/6- pneumonia, Approved INPT- slow to progress, Severe Sepsis due to Enterococci UTI  present on admission: C. Diff antigen negative. blood cultures- negative. Urine culture with ampicillin sensitive enterococcus. Recent rpt CXR shows Pneumonia-on Augmentin  to finish a course of 10 days.   COPD exacerbation: Duonebs/ on po steroid as per pulm-continue 40 mg  patient has been on this dose for over 2 weeks., Disposition: family working on getting nursing facility., Palliative care following-  Having episodes of shortness of breath. PRN Oxycodone available for SOB not relieved by other means and also for pain. |  |  |  |  | 0 |
		| 02012017 | 2017-02-01T06:58:51+00:00 |  | 000093826-01 | Patricia | Kendig | HMP OF OHIO PC | 927945 | SAYED A | SAYED | 1235475542 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 02092017 | Denied | MediGold Essential Care | Fax | Inpatient | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170202002 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed. | 01262017 | Inpatient | Inpatient | Approved  | 6 |
		| 02012017 | 2017-02-01T07:03:33+00:00 |  | 000099629-01 | Jayne | Drenning-Brown | HOSP SVC MED GRP OF MARY | 905119 | NAWAR | SAIEG | 1750400867 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02092017 | Denied | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170202003 | I4891 | Unspecified atrial fibrillation | ICD10 | 02142017 |  |  |  | 0 | 0 |  | 0 |  |  | Awaiting clincials, Patient on vent & Peg s/p bowel perforation several weeks ago.  Returns to hospital w/ sepsis  uti  GI bleeding  anemia  metabolic acidosis. | 01302017 | Inpatient | Inpatient | Approved | 9 |
		| 02022017 | 2017-02-02T09:28:09+00:00 |  | 000020889-01 | Jerrie | Storts | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02092017 | Denied | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170202013 | N390 | Urinary tract infection, site not specified | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Clinical documentation reviewed in PowerChart | 02012017 | Inpatient | Inpatient | Approved  | 8 |
		| 02012017 | 2017-02-01T13:37:11+00:00 |  | 000045197-01 | HOMER | LEACH | APOGEE MED GRP OHIO INC | 947769 | OLANREWAJU | ISHOLA | 1639500606 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02092017 | Denied | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170203061 | R0602 | Shortness of breath | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  | 83 year old male presented with worsening SOB BNP 3138  X-rays x-ray shows large right pleural effusion and early pulmonary congestion. the mbr was transferred to ICU-step down for chronic systolic congestive heart failure  acute chronic resp failure  pleural effusion   atrial fib with RVR. Amiodarone  Drip started.  Mbr to  international radiologist procedure to drain pleural effusion | 01302017 | Inpatient | Inpatient  | Approved  | 5 |
		| 02042017 | 2017-02-04T11:01:48+00:00 | 250148467035 | 000003704-01 | EVERETT | BARNES | TRAUMA & CRITICAL CARE S | 912763 |  | TRAUMA & CRITICAL CARE SURGEONS LLC | 1386976462 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02092017 | Denied | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170206032 | S066X9A | Traum subrac hem w LOC of unsp duration, init | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Notified per mt carmel vista report dated 02/04/17 that pt presented for admission as a Trauma Transfer from MCSA where pt presented s/p fall while walking with his walker.  Pt is admitted in Inpatient status, 79-year-old male with a history of COPD  ischemic cardiomyopathy  a-fib  hypertension  and aortic stenosis.  The patient stated that he had to go the bathroom.  He stood up  tried to use his walker; however  tripped over his walker and fell to the ground.  Denies any loss of consciousness.  States that he has a mild headache.  He was on Eliquis 3 weeks ago; however  he states that he does take aspirin., LABORATORY STUDIES:  Most labs were obtained at Mount Carmel East.  Sodium 139  potassium 5  BUN 35  creatinine 1.64.  White blood cell count 6.1  hemoglobin 10  and platelet count 100.  INR 1.29.  PFA is 135., IMAGING:, CT head shows a subarachnoid hemorrhage., 79-year-old male who had a mechanical fall.  On CT head was found to have a subarachnoid therefore transferred to Mount Carmel West for traumatic workup.  He will be admitted  made n.p.o.  and IV fluids will be started.  We have consulted Neurosurgery for the subarachnoid and plan is to admit the patient  obtain a repeat head CT in 6 hours from the original.  Due to the patient on aspirin we obtained a PFA.  The PFA is 135.  Therefore  we will not transfuse any platelets., 02/04/17 NEUROSURGERY CONSULT, IMPRESSION:, Most likely traumatic subarachnoid hemorrhage cannot totally exclude a ruptured aneurysm  although his clinical symptoms are not consistent with that.  I would recommend a CT angiogram of his brain  however.  His CTA is negative  then from a neurosurgical standpoint  he could be discharged and follow up in 2-3 weeks in my office with a repeat CT scan., 02/04/17 CTA NO CHANGE, 02/07/17 Pt lethargic with lower blood pressures in late morning.  Pt had vorvasc 10mg daily and Coreg 12.5mg BID .  Meds adjusted wife states pt was taken off Norvasc 2 weeks ago for hypotension/dizziness.  Norvasc d/c'd  500 ccNS bolus given., MEETS INPATIENT NURSING JUDGEMENT - SLOW TO PROGRESS | 02032017 | Inpatient | Inpatient | Approved  | 6 |
		| 02062017 | 2017-02-06T11:39:00+00:00 |  | 000074823-01 | Guy | Boling | CEN OH PRIMARY CARE PHYS | 916233 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02092017 | Denied | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170206048 | I469 | Cardiac arrest, cause unspecified | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Clinical documentation reviewed in PowerChart | 02052017 | Inpatient | Inpatient | Approved  | 3 |
		#| 02022017 | 2017-02-02T15:42:28+00:00 |  | 000003560-01 | PETER | SHEARS JR | ORTHO & NEURO CONSULTS I | 935566 | ROBERT J | NOWINSKI | 1174544506 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 02092017 | Denied | MediGold Classic Preferred | Fax | Pending Admission | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A170206106 | M25511 | Pain in right shoulder | ICD10 | 02092017 | 23472, 23420, 23440, 23030, 23395 | MUSCLE TRNSFR SHLDR UPPER ARM SNGL | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 29, 29, 29, 29, 29 | CPT | C4 |  |  |  |  |  | 0 |
		| 02072017 | 2017-02-07T09:52:50+00:00 |  | 000062321-01 | PAMELA | BURNETTE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02092017 | Denied | MediGold Essential Care | Reports | Inpatient | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170207009 | A419 | Sepsis, unspecified organism | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Clinical documentation reviewed in PowerChart | 02062017 | Inpatient | Inpatient | Approved  | 3 |
		| 02072017 | 2017-02-07T10:59:36+00:00 |  | 000071512-01 | Robert | Thompson | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02092017 | Denied | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170207033 | I639 | Cerebral infarction, unspecified | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Clinical documentation reviewed in PowerChart | 02062017 | Inpatient | Inpatient | Approved  | 3 |
		| 01312017 | 2017-01-31T09:45:19+00:00 |  | 000080087-01 | Elma | Shock | KEVIN M REID DO INC | 903114 | KEVIN M | REID | 1073514709 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 02092017 | Denied | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170207075 | R0602 | Shortness of breath | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 01292017 | Inpatient | Inpatient |   | 7 |
		| 02012017 | 2017-02-01T14:58:07+00:00 |  | 000044248-01 | BETTY | LEHMAN | ORTHO & SPINE CTR LLC | 907844 | KEDAR K | DESHPANDE | 1801891007 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 02092017 | Denied | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170207098 | R6889 | Other general symptoms and signs | ICD10 | 02112017 |  |  |  | 0 | 0 |  | 0 |  |  | Trauma admit to OON provider-GMC for concussion  bilateral SDH and right occipital bone fx-approved as INPT.  DC'd  1/29/17 | 01162017 | Inpatient | Inpatient | Approved | 14 |
		| 02012017 | 2017-02-01T15:43:22+00:00 |  | 000104274-01 | JAMES | CADIGAN JR | MERCY HEALTH PHYSICIANS | 921187 | DANIEL A | TRAMUTA | 1902803612 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 02092017 | Denied | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170207102 | R079 | Chest pain, unspecified | ICD10 | 02112017 |  |  |  | 0 | 0 |  | 0 |  |  | Per clinical review  member had a CABG, PC from UR  dc date: 02/06/2017 | 01312017 | Inpatient | Inpatient | Approved  | 6 |
		| 02022017 | 2017-02-02T11:17:25+00:00 |  | 000100931-01 | Janet | Casada | MERCY HOSPITAL ANDERSON | 939409 |  | MERCY HOSPITAL ANDERSON | 1235239211 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 02092017 | Denied | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170208015 | I209 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  | UR from MAH called on 02/07/17 to check on auth status  at the time this auth had not been built.  She discharged on 2/6/17.  Will wait on clinical to make determination., Meets MediGold guidelines for ACS  STEMI and pulm edema.  LHC and pulm management  5 day LOS. | 02012017 | Inpatient | Inpatient | Approved | 6 |
		| 02032017 | 2017-02-03T09:53:31+00:00 |  | 000061055-01 | MICHAEL | GLENN | OSU INTERNAL MED LLC | 936061 | WILLIAM T | ABRAHAM | 1093755944 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 02092017 | Denied | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170208053 | R6510 | SIRS of non-infectious origin w/o acute organ dysfunction | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed. | 02022017 | Inpatient | Inpatient | Approved  | 7 |
		| 02032017 | 2017-02-03T10:00:08+00:00 |  | 000079031-01 | Mary | Ingram | SWEST INPATIENT PHYS LLC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 02092017 | Denied | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170208054 | J189 | Pneumonia, unspecified organism | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  | Meets MediGold guidelines for Pneumonia  5 day LOS. Failed OP Tx  73% RA  etc. | 02022017 | Inpatient | Inpatient | Approved | 6 |
		| 02032017 | 2017-02-03T12:00:06+00:00 |  | 000017011-01 | HARRISON | VAN CAMP | HOSP SVC MED GRP OF MARY | 905119 | NAWAR | SAIEG | 1750400867 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02092017 | Denied | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170208072 | D72829| Pneumonia, unspecified organism | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  | Awaiting clinicals, 5-day LOS for pneumonia & acute respiratory failure.  DC'd to Hospice. | 02022017 | Inpatient | Inpatient | Approved  | 6|
		| 02062017 | 2017-02-06T09:25:23+00:00 |  | 000074119-01 | Donna | Green | PROVIDER, UNKNOWN | 999999999 | UNKNOWN | PROVIDER | 0 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 02092017 | Denied | TRINITY HEALTH | Fax | Inpatient | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170208132 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02112017 |  |  |  | 0 | 0 |  | 0 |  |  | Approved as INPT-AE COPD  Resp acidosis per ABG's  8L/NC  skin color dusky  severe retractions  60% RA  tripoding  resp rate-34  +ISO  etc | 02052017 | Inpatient | Inpatient | Approved  | 4 |
		| 02062017 | 2017-02-06T10:01:36+00:00 |  | 000093242-01 | Jasper | Willis | OSU INTERNAL MED LLC | 917202 | SAMANTHA M | JAGLOWSKI | 1669674271 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 02092017 | Denied | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170209007 | R0602 | Shortness of breath | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  | Placed call to Rochelle Rider  614-685-1600   to verify discharge date as it said 1/13/17 but admit date was 1/29/17 left my call back information. | 01292017 | Inpatient | Inpatient | Approved  | 3 |
		| 02062017 | 2017-02-06T11:24:40+00:00 |  | 000056825-01 | JANET | SMITH | OSU INTERNAL MED LLC | 933152 | DREW C | LOGAN | 1275828857 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 02092017 | Denied | MediGold Essential Care | Fax | Inpatient | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170209016 | I480 | Chest pain, unspecified | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02022017 | Inpatient | Inpatient | Approved | 2 |
		| 02092017 | 2017-02-09T09:20:03+00:00 |  | 000070005-01 | Phyllis | Kay | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02092017 | Denied | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170209018 | R6521 | Severe sepsis with septic shock | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 02082017 | Inpatient | Inpatient | Approved | 1 |
		| 02062017 | 2017-02-06T13:59:10+00:00 |  | 000076381-01 | Larry | Adams | KETTERING MEDICAL CENTER | 936443 |  | KETTERING MEDICAL CENTER | 1043233984 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02092017 | Denied | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170209057 | D62 | Shock, unspecified | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02032017 | Inpatient | Inpatient |   | 5 |
	#	| 02082017 | 2017-02-08T07:14:33+00:00 |  | 000066377-01 | JAMES | SIMON | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 02092017 | Denied | MediGold Essential Care | Fax | Pending Admission | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A170209078 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 02092017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 0 | 1 |  | 29 | CPT | C4 |  |  |  |  |  | 0 |
		| 02092017 | 2017-02-09T14:37:28+00:00 |  | 000034339-01 | Mark | Prince Sr | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02092017 | Denied | MediGold Essential Care | Reports | Inpatient | Inpatient | 02092017 | 02102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170209116 | J189 | Pneumonia, unspecified organism | ICD10 | 02092017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Entered by: KATHY MCDOUGLE on 08/12/2016 at 10:13:03 am, 08/09/2016 RECEIVED VMM FROM MARY JO CASE MGR FROM MCE 614-234-6803 INDICATING SHE RECEIVED A CALL FROM VA STATING THAT THEY WERE PRIMARY ON THIS ADMISSION AND WILL BE PAYING FOR ADMISSION., MCE now saying VA is not primary on this case. | 08072016 | Inpatient | Inpatient | Approved  | 6 |
