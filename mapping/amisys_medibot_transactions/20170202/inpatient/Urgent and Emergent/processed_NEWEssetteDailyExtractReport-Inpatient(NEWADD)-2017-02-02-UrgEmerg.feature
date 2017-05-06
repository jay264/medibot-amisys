Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-02-02-OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-02-02-UrgEmerg
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
| 01272017 | 2017-01-27T11:39:14+00:00 |  | 000051412-01 | GLENDA | GARRISON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02022017 | Denied | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 02022017 | 02032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170201026 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02022017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 12272016 | Inpatient | Inpatient | Approved  | 4 |
| 02012017 | 2017-02-01T11:48:47+00:00 | FIN0259194937028 | 000052557-01 | JANICE | SMITH | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02022017 | Denied | MediGold Classic Preferred | Reports | ACO | Inpatient | 02022017 | 02032017 | Standard | Pulmonary - $4,007 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170201028 | J449 | Urinary tract infection, site not specified | ICD10 | 02022017 |  |  |  | 0 | 0 |  | 0 |  |  | Received per vista report dated 01/29/2017, Admit date 01/28/2017, Admit type: observation, Clinical documentation reviewed in PowerChart, 72 yo F with PMH of COPD  HLD< Depression  ?Dementia  HTN  Anxiety  Lung Ca s/p lobectomy many years ago  former heavy smoker was brought in by daughter to outside ER for evaluation of frequent falls   gait instability  confusion since 3 days. Pt also reportedly complained of difficulty voiding urine. Blood gas done at outside ER showed a pCO2 of 85 and pt was put on Bipap with considerable improvement in mental status.  , 97.5 65 18 133/51, Labs from outside ER reviewed-Na 133  K 4.1  Cr 0.6  WBC 8.6  Hb 9.3  Plt 226  LA 0.3  pH 7.28. XR chest was normal and CT head showed chronic small vessel disease.  , Not on bipap here.  on nasal canula.   will continue Solumedrol  Duonebs. No evidence of infiltrates on XR chest. Will give Levaquin as she may have a UTI as well., 1/29-Patient doing well overall. Saturating well on 2 L nasal cannula  no significant wheezing on auscultation., 1/30- continue Solu-Medrol. will decrease this to 40 mg IV every 12 hours., finish course of antibiotics.  continue bronchodilators., 1/31-switch patient to by mouth prednisone. Discharge order written., Dtr will not send her mother to a SNF/has had bad experiences at 2 facilities.  Teresa is agreeable with MCHC(SN PT OT SW)., 2/01-CM note= Dtr asking for her mother to stay another night so she can get things ready.  Discussed that pt. was written for discharge yesterday & planning to discharge home today., Approved ACO-Pulmonary-N | 01282017 | Inpatient | Inpatient | Approved | 5 |
| 01272017 | 2017-01-27T13:59:13+00:00 |  | 000029010-01 | CATHERINE | TONEY | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02022017 | Denied | MediGold Essential Care | Reports | Inpatient | Inpatient | 02022017 | 02032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170201049 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 02022017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 01272017 | Inpatient| Inpatient | Approved | 4 |
| 01282017 | 2017-01-28T14:02:19+00:00 | 251477027027 | 000082853-01 | Carol | Chochard | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02022017 | Denied | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 02022017 | 02032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170201056 | I509 | Heart failure, unspecified | ICD10 | 02022017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Notified per mt carmel vista report dates 01/28/17 that pt presented for admission on 01/27/17 thru ER per instruction of PCP for elevated BNP and concern for possible heart failure.  Pt is admitted in Observation Status, 01/29/17 Cardiology Consult - Wt 127.2 Kg  Pt c/o 20 lb wt gain.  Decompensated diastolic heart failure:  I agree with continuing the patient's IV Bumex.  She can be transitioned to oral Bumex in approximately 24-48 hours and _____ can be a discharge medicine at home.  We will pay close attention to her blood pressure curves as she is a little hypertensive currently.  This is also could be driving her underlying diastolic heart failure.  I did review a 48-hour blood pressure curve and her blood pressures are elevated at times and other times they are controlled  134/82.  She may need an additional agent such as carvedilol; however  the patient has multiple allergies and obviously starting a medicine in a patient with multiple allergies is a little difficult at times.  We will continue to monitor her blood pressure curve and see if her blood pressure decreases a little bit with the Bumex therapy., Atrial fibrillation.  This appears to be a chronic problem.  She sees Dr. Vincent Guinn in the Electrophysiology.  She is currently on propafenone at home.  The patient's plan is to maintain chronic atrial fibrillation state and likely this antiarrhythmic would not be warranted.  I will defer to him at her next clinic appointment if this medicine should be continued in the outpatient setting.  She is on Eliquis for stroke prevention., 01/31/17 Wt 125.4 KgContinue IV bumetanide  diuresing well, MEETS INPATIENT - NURSING JUDGEMENT - SLOW TO PROGRESS, 02/01/17 Pt is about the same  is somewhat frustrated  does not know why rhytmol was discontinued.  tearful about her progress. | 01272017 | Inpatient| Inpatient | Approved | 7 |
| 01282017 | 2017-01-28T14:47:50+00:00 | 262239427027 | 000003398-01 | JOHN | TIMMONS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02022017 | Denied | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 02022017 | 02032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170201063 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 02022017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Notified per mt carmel vista report dated 01/28/17 that pt presented for admission on 01/27/17 thru ER with c/o constipation and urinary retention.  Pt admitted in Observation status, ER - presents with constipation and urinary retention. He had 600 mL on bladder scan so a Foley catheter was placed with good output. There is no hematuria  no signs of urinary tract infection.  Pt describes a history of this in the past. The patient was also constipated  he does not really have any significant tenderness  KUB had some concerning findings per the radiologist and recommended a CT scan. CT showed diverticulosis  a stable AAA  constipation  possible fecal impaction. Patient also had a hemoglobin of 6.8  lower than previous readings. Rectal exam  performed stool had  normal appearance but guaiac positive.  Hgb 6.5  1 Unit PRBC ordered.  GI Consulted  Uro Consulted, 01/28/17 GI CONSULT -  IMPRESSION:, Microcytic anemia  likely reflective of chronic gastrointestinal blood loss.  There is no clinical evidence for acute gastrointestinal blood loss.  The differential diagnosis is long  but the use of anticoagulation certainly is exacerbating this issue.  aggressive gastrointestinal evaluation would be in his best interest.  Better option may be iron replacement (IV) while inpatient  and oral iron as an outpatient.  Alternatively  we could do an upper endoscopy  but colonoscopy may be too much for him (apparently had a normal colonoscopy 5 years ago)., 01/30/17 GI note - Hgb 6.6 and trending down.  another dose of IV iron today  consider EGD in light of dropping hemoglobin - cannot do today pt has already eaten., 01/30/17 attending note - Transfuse 2 Units PRBC and continue to hold Xarelto, 01/31/17 Hgb up to 9.0EGD - probable fungal esophagitis - brushed for culture  atrophic gastritis.  No blood or bleeding sites seen in UGI tract.  Start Diflucan., MEETS INPATIENT - NURSING JUDGEMENT - SLOW TO PROGRESS | 01272017| Inpatient | Inpatient | Approved  | 5|
| 02012017 | 2017-02-01T15:42:34+00:00 |  | 000044021-01 | ROBERT | BILLHEIMER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02022017 | Denied | MediGold Medical Only | Reports | Inpatient | Inpatient | 02022017 | 02032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170201071 | I639 | Cerebral infarction, unspecified | ICD10 | 02022017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 01292017 | Inpatient| Inpatient | Approved | 2|
| 02012017 | 2017-02-01T11:27:28+00:00 | 255849537016 | 000010315-01 | EDWARD | ASHLEMAN | OHIO ENT & ALLERGY PHYSI | 936912 | JEFFERY B | HILTBRAND | 1184696585 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02022017 | Denied | MediGold Classic Preferred | Reports | EIS | Inpatient | 02022017 | 02032017 | Standard |  | Yes |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170202039 | C329 | Other diseases of vocal cords | ICD10 | 02022017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Notified per mt carmel vista report dated 02/01/17 that pt presented for planned procedure on 01/31/17, 01/31/17 To OR for, PROCEDURE:, Microdirect laryngoscopy with biopsy and laser excision/debulking of laryngeal tumor., POSTOPERATIVE DIAGNOSIS:, Laryngeal neoplasm., Pt admitted in AS status.  Admitted to inhouse bed overnight for airway protection., Review of power chart MEETS EIS, MEETS EIS $6500.00, EIS - Y | 01312017 | Inpatient| Inpatient | Approved  | 2 |
| 02012017 | 2017-02-01T12:25:19+00:00 | 252110227031 | 000014526-01 | Mona | Marioth | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02022017 | Denied | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 02022017 | 02032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170202047 | 56983 | PERFORATION OF INTESTINE | ICD9 | 02022017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Notified per mt carmel vista report dated 02/01/17 that pt presented for admission on 01/31/17 thru ER with c/o abdominal pain.  CT is suspicious for cecal perforation with associated ascites and extensive rt lower quad mesenteric stranding.  Pt is admitted in INPATIENT HOSPICE status, Review of Voyager pt is ACTIVE HOSPICE PATIENT 09/01/16 - 01/31/17, Review of Voyager pt is ACTIVE HOSPICE PATIENT 09/01/16 - 01/31/17, Patient EXPIRED on 02/01/17 at 06:48, Patient EXPIRED on 02/01/17 at 06:48 | 01312017| Inpatient| Inpatient| Approved  | 2 |
| 02022017 | 2017-02-02T14:03:47+00:00 |  | 000017870-01 | PHYLLIS | RUCKER | CEN OH PRIMARY CARE PHYS | 916233 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02022017 | Denied | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 02022017 | 02032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170202074 | A419 | Sepsis, unspecified organism | ICD10 | 02022017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 01302017 | Inpatient | Inpatient| Approved | 3 |
| 02022017 | 2017-02-02T14:40:43+00:00 |  | 000049991-01 | CHARLOTTE | SCARBERRY | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02022017 | Denied | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 02022017 | 02032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170202089 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02022017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 01272017 | Inpatient | Inpatient | Approved  | 6 |
