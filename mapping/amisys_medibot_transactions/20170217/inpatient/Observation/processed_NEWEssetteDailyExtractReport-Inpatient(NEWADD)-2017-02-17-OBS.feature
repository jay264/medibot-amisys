Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-02-17-OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-02-17-OBS
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
| 02012017 | 2017-02-01T14:15:30+00:00 |  | 000082636-01 | Mary | Rife | FAIRFIELD MED ASSOC LLC | 936765 | MICHELLE L | GRAHAM | 1164408258 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02172017 | Denied | MediGold Classic Preferred | Fax | Observation | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170206096 | N119 | Chronic tubulo-interstitial nephritis, unspecified | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |
| 02072017 | 2017-02-07T10:01:31+00:00 |  | 000070642-01 | Richard | Allton Sr | SALOMON, ALBERT M | 934725 | ALBERT M | SALOMON | 1902887789 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02172017 | Denied | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170207014 | R109 | Unspecified abdominal pain | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Clinical documentation reviewed in PowerChart | 02062017 | Inpatient | Inpatient | Approved  | 11 |
| 02012017 | 2017-02-01T15:33:57+00:00 |  | 000028070-01 | Magdelean | Branham | APOGEE MED GRP OHIO INC | 949153 | TINA L | HARRIS | 1093191298 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02172017 | Denied | MediGold Classic Preferred | Fax | Observation | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170207096 | M6281 | Dizziness and giddiness | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 01272017 | Observation | Observation | Approved | 4 |
| 02022017 | 2017-02-02T11:55:16+00:00 |  | 000088808-01 | Carol | Giauque | COSHOCTON COUNTY MEM HSP | 936454 |  | COSHOCTON COUNTY MEMORIAL | 1053398099 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 02172017 | Denied | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170208019 | I509 | Heart failure, unspecified | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | Recent hx of PNA with current CHF exacerbation. Stage IV CKD with BUN and Cr reported at baseline. | 01312017 | Observation | Observation | Approved  | 4 |
| 02032017 | 2017-02-03T13:03:44+00:00 |  | 000104203-01 | Michael | Knorzer | SOUND KENWOOD HSPISTS OF | 929478 | BRIAN | KEEGAN | 1225156045 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 02172017 | Denied | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170208090 | R0789 | Other chest pain | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02022017 | Observation | Observation | Approved | 2 |
| 02062017 | 2017-02-06T13:45:01+00:00 |  | 000067111-01 | LESTER | HULSE | LICKING MEM INPATIENT ME | 936224 | KHANH V | DANG | 1922007111 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02172017 | Denied | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170209053 | J189 | Weakness | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | Hospital Notification Form rcv'd.  Awaiting clinicals., Admitting for pneumonia  AKI w/ worsening renal function  metabolic acidosis  worsening leukocytosis  hallucinations.  Tx includes IV atb's  IV steroids  Duonebs  Vit K IVP  O2 supplement., To date  9-day LOS | 02052017 | Inpatient | Inpatient | Approved  | 12 |
| 02072017 | 2017-02-07T09:19:07+00:00 |  | 000074435-01 | Patty | Davis | UNIVERSITY OF CINCINNATI | 924925 | ROCKY E | PITTMAN | 1881884997 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 02172017 | Denied | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170210017 | E7251 | Non-ketotic hyperglycinemia | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | Admitted for HHNC (hyperglycemic hyperosmolar nonketotic coma)  confusion  dehydration  syncope.  Syncopal episode in bathroom.  Glucose 659  WBC 12.5  lactate 2.7.  ED tx: IVF's  insulin gtt  Ativan x 1.  Admitted and cont'd IVF's w/ Kcl  Insulin gtt  Labetolol IV x 1 for elevated BP., DC'd to SNF.  3-day LOS | 02062017 | Observation | Observation | Approved  | 4 |
| 02082017 | 2017-02-08T10:06:07+00:00 |  | 000096888-01 | Jerry | Richards | S DAYTON ACUTE CARE CNSL | 908033 | INDU | RAO | 1447242045 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02172017 | Denied | MediGold Classic Preferred | Fax | Observation | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170210083 | T82590A | Mech compl of surgically created arteriovenous fistula, init | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02072017 | Observation | Observation |  | 5 |
| 02092017 | 2017-02-09T13:33:42+00:00 |  | 000105689-01 | RONALD | CONLEY | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02172017 | Denied | MediGold Classic Preferred | Fax | Observation | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170212001 | A419 | Sepsis, unspecified organism | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | 30 day readmission. 1/28/17 to 2/4/17. S/P  R second toe amputation for MRSA osteomyelitis. Tachycardia  hypotension  fever. WBC 46. CXR with possible LLL PNA. Tx: IVATB for MRSA and LLL PNA. Responded well to Fluid resuscitation in ED., Facility requesting Inpatient consideration.  Physician review submitted to the Medical Director for determination., Medical Director review determined Observation. | 02082017 | Observation | Observation | Approved  | 4 |
| 02132017 | 2017-02-13T09:44:25+00:00 |  | 000011596-01 | GEORGE | DANDRIA | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02172017 | Denied | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170213020 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Clinical documentation reviewed in PowerChart | 02102017| Inpatient| Inpatient | Approved  | 7 |
| 02132017 | 2017-02-13T11:39:00+00:00 |  | 000063386-01 | ELIZABETH | BOALS | CENTRAL OHIO SURG ASSOC | 934982 | THOMAS M | VARA | 1457390130 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02172017 | Denied | MediGold Classic Preferred | Reports | Observation | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170213052 | K859 | Acute pancreatitis, unspecified | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Clinical documentation reviewed in PowerChart | 02122017 | Observation | Observation | Approved  | 5|
| 02102017 | 2017-02-10T13:15:05+00:00 |  | 000075366-01 | Richard | Clink | MARIETTA HLTH CARE PHYS | 922106 | JOSEPH A | ZACHARIAS | 1881847572 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 02172017 | Denied | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170213135 | E871 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | Facility requesting IP consideration:, Pmhx of DM  HTN  Recent L BKA  ESRD on HD presented w CP. Chronically elevated troponins were slightly elevated from baseline. Peak Troponin 0.45. EKG w no acute changes.  NA 124  K+ 6.1 BUN 48  Cr 5.5- due for HD on 2/10.  Blood cx +Staph but suspected contaminent. Possible NSTEMI.  Decision to tx medically as he had a LHC w stents 3/2016.   CP resolved., Submitted to the Medical Director for determination., Medical Director review determined Observation level of services. | 02092017 | Observation | Observation | Approved  | 5 |
| 02152017 | 2017-02-15T10:22:55+00:00 | 174836157046 | 000105149-01 | Norma | Mathews | ARABELLA HRT LLC | 900697 | JYOTI R | CHAWLA | 1528159241 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02172017 | Denied | MediGold Essential Care | Fax | Observation | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170215024 | J111 | Flu due to unidentified influenza virus w oth resp manifest | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02142017 | Observation | Observation | Approved  | 3 |
| 02152017 | 2017-02-15T10:26:16+00:00 | 259010587045 | 000060911-01 | HARLEY | DONALDSON | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02172017 | Denied | MediGold Classic Preferred | Fax | Observation | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170215025 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02142017 | Observation | Observation | Approved  | 3 |
| 02152017 | 2017-02-15T11:51:18+00:00 |  | 000003143-01 | KENEL | KELLY | GREG A WISE MD INC | 935061 | GREG | WISE | 1366413940 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02172017 | Denied | MediGold Classic Preferred | Reports | Observation | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170215056 | R1013 | Epigastric pain | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Clinical documentation reviewed in PowerChart | 02142017 | Observation | Observation | Approved  | 3 |
| 02142017 | 2017-02-14T10:01:25+00:00 |  | 000091342-01 | Rueben | Peterson | FAM PHYS OF SPRINGFIELD | 907236 | ROBERT E | KNEISLEY | 1679598163 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02172017 | Denied | MediGold Essential Care | Fax | Observation | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170215058 | F0390 | Fall same lev from slip/trip w/o strike against object, init | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | 88 year old male represented the ED after falling over a wheelchair.  the mbr sustain a laceration to the head. LOC unknown. CM consulted for placement mbr unable to return home w/o 24/7 hr supervision. EKG NSR PT/OT consulted | 02132017 | Observation | Observation | Approved | 3 |
| 02142017 | 2017-02-14T10:29:31+00:00 |  | 000109200-01 | Edward | Young | S DAYTON ACUTE CARE CNSL | 932325 | SIVAPRASAD | NALLURI | 1558619668 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02172017 | Denied | MediGold Essential Care | Fax | Observation | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170215061 | N390 | Urinary tract infection, site not specified | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02122017 | Observation | Observation |   | 4 |
| 02142017 | 2017-02-14T11:23:26+00:00 |  | 000066021-01 | EDWARD | FILIPOWICZ | SOUND INPATIENT PHYS OF | 900017 | MOHAMUD S | MOHAMED | 1700869377 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 02172017 | Denied | MediGold Essential Care | Fax | Observation | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170215063 | R079 | Chest pain, unspecified | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |
| 02152017 | 2017-02-15T09:35:21+00:00 |  | 000115196-01 | Ruth | Hannum | MED ASSOCS OF CAMBRIDGE | 917144 | KAYODE | OJEDELE | 1871546929 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 02172017 | Denied | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170215101 | 4932 | CHRONIC OBSTRUCT ASTH W COPD | ICD9 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02142017 | Observation | Observation |  | 3 |
| 02152017 | 2017-02-15T09:30:50+00:00 |  | 000048542-01 | NELLIE | MILLER | HMP OF FRANKLIN CTY LTD | 911932 | NOSAYAB | AGIDIGBI | 1356572879 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 02172017 | Denied | MediGold Classic Preferred | Fax | Observation | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170216013 | E875 | Hyperkalemia | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |
| 02162017 | 2017-02-16T11:13:20+00:00 |  | 000043951-01 | PATRICIA | BRIGHT | HMP OF OHIO PC | 920685 | VISHNUVARDHAN | KOMARI | 1790929966 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02172017 | Denied | MediGold Classic Preferred | Reports | Observation | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170216052 | R079 | Chest pain, unspecified | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Clinical documentation reviewed in PowerChart | 02152017 | Observation | Observation | Approved  | 2 |
| 02162017 | 2017-02-16T11:16:57+00:00 | 252216377046 | 000058127-01 | SANDRA | ROBSON | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02172017 | Denied | MediGold Classic Preferred | Reports | Observation | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170216055 | J159 | Unspecified bacterial pneumonia | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02152017 | Observationn | Observation | Approved  | 3 |
| 02162017 | 2017-02-16T11:16:32+00:00 |  | 000066244-01 | JC | BRAZZELL JR | HMP OF OHIO PC | 920685 | VISHNUVARDHAN | KOMARI | 1790929966 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02172017 | Denied | MediGold Classic Preferred | Reports | Observation | Inpatient | 02172017 | 02182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170216057 | I4891 | Unspecified atrial fibrillation | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Clinical documentation reviewed in PowerChart | 02152017 | Observation | Observation | Approved  | 2 |
