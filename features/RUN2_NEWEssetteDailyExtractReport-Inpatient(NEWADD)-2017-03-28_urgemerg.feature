Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-28_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-28_URGEMERG
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
	And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
	And the test pauses for "2" seconds
	And in the "Certification" page I use the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Hospital Svcs"
	And the test pauses for "3" seconds
	And in the "hospital_services" page I should see the "est_admit" image
	And the test pauses for "3" seconds
	#And in the "hospital_services" page I enter "<care_date>" into the "est_admit" image
	And in the "hospital_services" page I enter the first element from "<care_date>" into the "est_admit" image
	And in the "hospital_services" page I subtract one from the "<auth_approval_days>" days and put the result in the "auth_days" image
	And in the "hospital_services" page I enter "$" into the "facility_number" image
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
	And the test pauses for "3" seconds
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
	And in the "authorized_services" page I should see the "amounts_and_dates" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I convert "<care_date>" into the "dates_begin_requested" image and save the variable
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
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds

	And I press "F8"
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "3" seconds

	And I input the notes if any are contained in "<notes>"
	And the test pauses for "5" seconds

	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
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

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

	Examples:
		| requested_date  | military_date      | other_reference_# |	member_id | member_first_name |	member_last_name | practice_name | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name  | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	| servicing_provider_npi_# |	sub_class  | sub_class_code | type  |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm | auth_for_payment | days_used_prior | dc | denc_date | mds_date | nomnc_date | total_days | total_skilled_days | auth_type      | auth_status    |	auth_number |	diagnosis_code     |	diagnosis                                          			|	diagnosis_type |	auth_modified_date | service_code       | service_description                                                    | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                  | care_date | actual_level_of_care | approved_level_of_care | determination | auth_approval_days |
| 02032017 | 2017-02-03T16:40:17+00:00 |  | 000078162-01 | Anthony | Cognion | COSHOCTON COUNTY MEM HSP | 936454 |  | COSHOCTON COUNTY MEMORIAL | 1053398099 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Inpatient | IP | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 03282017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 02022017 | 02062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170208099 | K859 | Acute pancreatitis, unspecified | ICD10 | 03282017 |  |  |  | 0 | 0 |  | 0 |  |  | 4-day LOS for Acute Pancreatitis.  DC'd to SNF.  With clinical provided does not meet IP criteria., The additional clinical documentation has been submitted to the Medical Director for review and upon review it was determined to meet Inpatient level of services., Approval letter faxed to facility. | 02022017, 02032017, 02042017, 02052017, 02062017 | Observation, Observation, Observation, Observation, Observation | Inpatient, Inpatient, Inpatient, Inpatient, Observation | Approved, Approved, Approved, Approved,  | 5, 5, 5, 5, 5 |
| 02072017 | 2017-02-07T14:44:58+00:00 |  | 000037553-01 | DON | NEWLUN | ADENA MEDICAL GROUP LLC | 902974 | ZORAN | NAUMOVSKI | 1326041138 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02072017 | 02172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170210056 | I959 | Hypotension, unspecified | ICD10 | 03282017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11 |
| 02132017 | 2017-02-13T08:47:17+00:00 |  | 000083342-01 | Linda | York | SPFLD ORTHO SPORTS MED L | 908174 | IAN | THOMPSON | 1619928371 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 03282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03142017 | 03162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170213077 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 03282017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 | 69 year old presented to Ohio Valley for a prior auth procedure and underwent a Left Total knee arthroplasty  on 03/15/2017   with no complications   the mbr discharged in stable condition on 3/16/2017 to Home with HC. | 03152017, 03162017, 03142017 | Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient | Approved, , Approved | 3, 3, 3 |
| 02132017 | 2017-02-13T10:25:44+00:00 |  | 000051699-01 | SANDRA | REINHARD | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03202017 | 03232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170213112 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 03282017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 4 | CPT | C4 | L THA as prior  authorized. | 03202017, 03212017, 03222017, 03232017 | Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 03102017 | 2017-03-10T13:30:58+00:00 | 264951297067 | 000029654-01 | JUDITH | WARD | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 03092017 | 03272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170310039 | R0602 | Shortness of breath | ICD10 | 03282017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Notified per mt carmel discharge vista report dated 03/28/17 that pt EXPIRED on 03/27/17 at 18:10 | 03092017, 03102017, 03112017, 03122017, 03132017, 03142017, 03152017, 03162017, 03172017, 03182017, 03192017, 03202017, 03212017, 03222017, 03232017, 03242017, 03252017, 03262017, 03272017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19 |
| 03132017 | 2017-03-13T15:16:28+00:00 |  | 000104791-01 | CYNTHIA | GREEN | COLON & RECTAL SURG INC | 935327 | JASWANT | MADHAVAN | 1790785897 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03222017 | 03252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170313128 | C180 | Malignant neoplasm of cecum | ICD10 | 03282017 | 44205 | LAP COLECTOMY PART W/ILEUM | CPT | 1 | 1 | Approved | 4 | CPT | C4 | PHONE CALL TO CAROL WITH DR MADHAVAN REQUESTING CLINICAL INFORMATION.  SHE VERBALIZED UNDERSTANDING AND IS GOING TO FAX OVER., Clinical documentation reviewed in PowerChart | 03222017, 03232017, 03242017, 03252017 | Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 03142017 | 2017-03-14T07:16:33+00:00 |  | 000062520-01 | JOHN | WHEELER | NOCK, PETER T | 903807 | PETER T | NOCK | 1578561361 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03132017 | 03242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170316010 | A419, J189, R6521 | Severe sepsis with septic shock | ICD10 | 03282017 |  |  |  | 0 | 0 |  | 0 |  |  | Review for the DOS 3/13. Presented from a SNF with progressive AMS. CXR with R sided infiltrate. Worsening renal function. BUN 101  Cr. 3.19 with current hx CKD stage IV and Metastatic Renal CA in liver  and pancreas.  5L O2 required to maintain POX above 90%  his home O2 at 3L.  Hypotensive with BP 90/43. ABG's reveal acute metabolic acidosis.  Initial tx include IV ATBs  supplemental O2  Protonix IV  NA Bicarb. | 03132017, 03142017, 03152017, 03162017, 03172017, 03182017, 03192017, 03202017, 03212017, 03222017, 03232017, 03242017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 |
| 03202017 | 2017-03-20T10:12:55+00:00 |  | 000104623-01 | Ruth | Middaugh | MIAMI VALLEY HSPISTS GRP | 948478 | ROUZBEH | SHAMS | 1437458981 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 03282017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 03172017 | 03242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170323024 | I2699, J441, J9620, N178 | Other acute kidney failure | ICD10 | 03282017 |  |  |  | 0 | 0 |  | 0 |  |  | Recent admission for Acute Resp Failure w/ intubation.  A week later returns to ED for SOB w/ hypoxia; 84% on 4L.  Found to have bilateral PE's and acute R DVT.  H/o DVT  not on blood thinners d/t h/o GI bleed.  S/p IVF filter.  Placed on Heparin gtt  IVF's  Duonebs  IV atb's  BIPAP @ 60.  Day #5 Con't Hep gtt  IVFs  Duonebs (Coumadin started Day #3).  Remains on 10L high flow O2.  Day #6 on 8L high flow O2 w/ c/o SOB.  , DC'd to SNF.  7-day LOS | 03172017, 03182017, 03192017, 03202017, 03212017, 03222017, 03232017, 03242017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 8, 8, 8, 8, 8, 8, 8, 8 |
| 03212017 | 2017-03-21T15:17:00+00:00 |  | 000097439-01 | William | Cooper | GREENE MEM HSP SRVS INC | 900736 | LATHA | VENKATESH | 1760487979 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 03282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03202017 | 03242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170324017 | J441, R0902 | Hypoxemia | ICD10 | 03282017 |  |  |  | 0 | 0 |  | 0 |  |  | LVMM for ur dept at GMH  requesting additional clinical  dc date and disposition. | 03202017, 03212017, 03222017, 03232017, 03242017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved,  | 5, 5, 5, 5, 5 |
| 03242017 | 2017-03-24T14:49:21+00:00 | 251159127074 | 000029380-01 | WILLIAM | THOMPSON | MOUNT CARMEL WEST PHYS | 936517 | JONATHAN B | FEIBEL | 1578556817 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03282017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 03232017 | 03242017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170324094 | M960 | Pseudarthrosis after fusion or arthrodesis | ICD10 | 03282017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Correction to Inpatient review.  Pt meets EIS Program.  PM change sent for same, MEETS EIS - Y $6 500.00, MEETS EIS - Y $6 500.00 | 03232017, 03242017 | Observation, Observation | Inpatient, Observation | Approved,  | 2, 2 |
