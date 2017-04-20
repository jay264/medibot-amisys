Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-22_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-22_OBS
	Given I save the auth class "<auth_class>" to a variable
	Given I sign in to the application
	And the test pauses for "3" seconds
	When in the "Home" page I click on "Authorizations/Medical Management"
	And the test pauses for "3" seconds
	And in the "Authorizations Medical Management" page I click on "Certification"
	And the test pauses for "10" seconds
	And in the "Certification" page I should see the "Initial Date" element
	And I press "Control + N"
	And in the "certification" page I should see the "red_and_yellow_boxes" image
	And in the "Certification" page I enter "<requested_date>" into the "Initial Date" field
	And in the "Certification" page I enter "<requested_date>" into the "Req Dates 1" field
	And in the "Certification" page I enter "<member_id>" into the "Member Number" field
	And in the "Certification" page I use the source "<source>" to determine what to enter into the "Source" field
	And in the "Certification" page I enter the primary "<diagnosis_code>" into the "Primary Diag Dt 1" field and save the variable
	And in the "Certification" page I enter "OB" into the "Auth Type" field
	And the test pauses for "2" seconds
	And in the "Certification" page I use the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "3" seconds
	And in the "authorized_services" page I should see the "amounts_and_dates" image
	And the test pauses for "2" seconds
	#And in the "authorized_services" page I enter "<care_date>" into the "dates_begin_requested" image
	And in the "authorized_services" page I enter the first element from "<care_date>" into the "dates_begin_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I add the "<auth_approval_days>" to the "<care_date>" and put the result in the "dates_end_requested" image and subtract one
	And the test pauses for "2" seconds
	And in the "authorized_services" page I add the "<auth_approval_days>" to the "<care_date>" and put the result in the "dates_end_approved" image and subtract one
	And the test pauses for "2" seconds
	#And in the "authorized_services" page I enter "<care_date>" into the "dates_begin_approved" image
	And in the "authorized_services" page I enter the first element from "<care_date>" into the "dates_begin_approved" image
	And the test pauses for "2" seconds
	#And in the "authorized_services" page I enter "<auth_approval_days>" into the "how_many_requested" image
	And in the "authorized_services" page I enter the first element from "<auth_approval_days>" into the "how_many_requested" image
	And the test pauses for "2" seconds
	#And in the "authorized_services" page I enter "<auth_approval_days>" into the "how_many_authorized" image
	And in the "authorized_services" page I enter the first element from "<auth_approval_days>" into the "how_many_authorized" image
	And the test pauses for "2" seconds
	And I use the sub class "<sub_class>" to determine what location to enter into the location image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And I use the sub class "<sub_class>" to determine what count to enter into the count image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "$" into the "prov" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And the test pauses for "3" seconds
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

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"


		Examples:
		| requested_date  | military_date             | other_reference_#    |	member_id   | member_first_name |	member_last_name | practice_name               | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name      | requesting_provider_npi_# |	facility_name                 | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	      | servicing_provider_npi_# |	sub_class  | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason                 |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm | auth_for_payment | days_used_prior | dc | denc_date | mds_date | nomnc_date | total_days | total_skilled_days | auth_type         | auth_status    |	auth_number |	diagnosis_code     |	diagnosis                                          			|	diagnosis_type |	auth_modified_date | service_code                    | service_description                                      | service_type |	qty_appr      |	qty_reqd      |	determination                          |	auth_approval_days | type   |	type_code  | notes                                                                                                                                                                                                                                   | care_date  | actual_level_of_care | approved_level_of_care | determination | auth_approval_days |
| 02222017 | 2017-02-22T10:23:53+00:00 |  | 000100948-01 | Kenneth | Brown | PARS NEUROSURG ASSOC INC | 924062 | SEYED ABDI | GHODSI | 1205803814 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 03222017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 03162017 | 03172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Pre-Service | Approved | A170222040 | M47816, M5136, M5481 | Occipital neuralgia | ICD10 | 03222017 | 62327 | NJX INTERLAMINAR LMBR/SAC | CPT | 0 | 1 |  | 2 | CPT | C4 |  |  |  |  |  | 0 |
| 02222017 | 2017-02-22T11:07:15+00:00 |  | 000062695-01 | JAYNE | BLAISDELL | LICKING MEM INPATIENT ME | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03222017 | Approved | MediGold Medical Only | Fax | Observation | Inpatient | 02212017 | 02242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170223061 | J209, J440 | Chronic obstructive pulmon disease w acute lower resp infct | ICD10 | 03222017 |  |  |  | 0 | 0 |  | 0 |  |  | Wosening cough  dyspnea. Failed out pt ATBs. O2 sats on RA 84-90%. O2 sat on 2L 96%.  Not on home O2.  VSS. Imaging neg for acute disease. Tx: IV ATBs  IV Steroids IV Lasix Supplemental O2. Went home on O2. Continues to smoke 1PPD., Facility requesting review for IP. Submitted to the Medical Director for determination., The Medical Director determined Observation. | 02212017, 02222017, 02232017, 02242017 | Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 03062017 | 2017-03-06T15:49:44+00:00 |  | 000093334-01 | Rebeca | Armas | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03032017 | 03062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170309004 | R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 03222017 |  |  |  | 0 | 0 |  | 0 |  |  | PMH of HTN DM and Cardiomyopathy presented with CP  HA and elevated BP. Symptoms resolved with administration of NTG.  Imaging with no acute disease. Cardiac enzymes negative. EKG with sinus bradycardia with no ST changes but with new T wave inversions. Remained hemodyanically stable throughout admission., Submitted to the Medical Director for determination at Facility request., The Medical Director determined Observation. | 03032017, 03042017, 03052017, 03062017 | Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 03072017 | 2017-03-07T08:37:13+00:00 |  | 000031955-01 | JANET | HEDGES | COMMUNITY HSPIST LLC | 943106 | AMANDA L | SLATER | 1770844367 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03062017 | 03092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170309039 | N189 | Chronic kidney disease, unspecified | ICD10 | 03222017 |  |  |  | 0 | 0 |  | 0 |  |  | Presented 1 day after dc from SNF with elevated BP and AMS. Worsening renal fx  BUN 42  and Cr 2.67 with baseline of 2.0. Ammonia 166. Mildly hypertensive with SBP 188 baseline 150.  AMS with baseline dementia. Requires a telesitter for safety. Tx with Lactulose  IV Hydralazine PRN  IVFs., Recent admission for same concerns., Facility requesting review by the Medical Director for IP., The Medical Director determined Observation. | 03062017, 03072017, 03082017, 03092017 | Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 03132017 | 2017-03-13T09:02:22+00:00 |  | 000078570-01 | Debbie | Wilson | FAIRFIELD HLTHCARE PROFS | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03122017 | 03132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170315046 | M549 | Dorsalgia, unspecified | ICD10 | 03222017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03122017, 03132017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
| 03132017 | 2017-03-13T16:12:17+00:00 |  | 000042649-01 | JOSEPHINE | GILMORE | APOGEE MED GRP OHIO INC | 947342 | RAZVAN I | DUCU | 1093017790 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03122017 | 03152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170315110 | R042 | Hemoptysis | ICD10 | 03222017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03122017, 03132017, 03142017, 03152017 | Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation | Approved, Approved, Approved, Approved | 4, 4, 4, 4 |
| 03132017 | 2017-03-13T16:19:37+00:00 |  | 000031955-01 | JANET | HEDGES | FAIRFIELD HLTHCARE PROFS | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03112017 | 03142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170316002 | R0600 | Dyspnea, unspecified | ICD10 | 03222017 |  |  |  | 0 | 0 |  | 0 |  |  | Readmission for fatigue and SOB. C-diff positive. UA positive.  Diuretics on hold due to diarrhea. Fluid overload. CXR with possible pulmonary edema. Tx with IV lasix.  VSS.  Decision to place in Palliative care on 3/11. 3L O2.  , Review on 3/13 reports declining status with periods of apnea., Facility requesting review for IP., The Medical Director determined Observation. | 03112017, 03122017, 03132017, 03142017 | Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 03142017 | 2017-03-14T14:35:11+00:00 |  | 000108871-01 | Ernest | Moreland | KNOX COMMUNITY HSP PHYS | 913996 | LAURA B | MURNANE | 1578744124 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 03222017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03142017 | 03172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170317001 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 03222017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03142017, 03152017, 03162017, 03172017 | Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation | , , ,  | 4, 4, 4, 4 |
| 03152017 | 2017-03-15T09:41:06+00:00 |  | 000080932-01 | Nellie | Rutledge | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 03222017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 03152017 | 03172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170321029 | R0902 | Hypoxemia | ICD10 | 03222017 |  |  |  | 0 | 0 |  | 0 |  |  | Had an OBS admit 3/14-3/15 for mild CHF exacerbation and returns on 3/15 w/ persistent weakness & dyspnea.  Echo EF 25%.  BNP 4930  D-Dimer 0.61.  Diuresed well with Lasix IV x2.  , DC'd to home w/ daughter.  2-day LOS, Meets OBS guidelines. | 03152017, 03162017, 03172017 | Observation, Observation, Observation | Observation, Observation, Observation | Approved, Approved,  | 3, 3, 3 |
| 03222017 | 2017-03-22T10:57:39+00:00 |  | 000027303-01 | EZEKIAL | TOTTEN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03222017 | Approved | MediGold Classic Preferred |  | Observation | Inpatient | 03202017 | 03212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170322056 | G40919 | Epilepsy, unsp, intractable, without status epilepticus | ICD10 | 03222017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03202017, 03212017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
| 03172017 | 2017-03-17T08:54:20+00:00 |  | 000034789-01 | LAWRENCE | DOWDEN | HMP OF OHIO PC | 931483 | MOHAMMAD Y | SALEH | 1760794903 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 03222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03172017 | 03192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170322073 | K4090 | Unil inguinal hernia, w/o obst or gangr, not spcf as recur | ICD10 | 03222017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03172017, 03182017, 03192017 | Observation, Observation, Observation | Observation, Observation, Observation | Approved, Approved, Approved | 3, 3, 3 |
| 03202017 | 2017-03-20T14:27:35+00:00 |  | 000108723-01 | Regina | Davis | THE CHRIST HSP CARDIOVAS | 945149 | JULIE | PAVACH | 1194043141 | BETHESDA HOSPITAL INC | 936487 | 1396714663 | BETHESDA HOSPITAL INC | 1396714663 | Observation | OBSV | Concurrent Review | CONC |  | BETHESDA HOSPITAL INC | 03222017 | Interim Approval | MediGold Southwest OH Classic Preferred | Fax | OBS | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170322097 | R0789 | Other chest pain | ICD10 | 03222017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03162017, 03172017, 03182017 | Observation, Observation, Observation | Observation, Observation, Observation | Approved, Approved,  | 0, 0, 0 |
