Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-20_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-20_URGEMERG
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
| 02202017 | 2017-02-20T10:33:36+00:00 | 175104807049 | 000069372-01 | SUSAN | SPAULDING | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03202017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 02172017 | 03032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170220041 | I509 | Heart failure, unspecified | ICD10 | 03202017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017, 02272017, 02282017, 03012017, 03022017, 03032017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15 |
| 02212017 | 2017-02-21T11:14:40+00:00 |  | 000087874-01 | Ben | Miller | MERCY HEALTH PHYSICIANS | 920790 | MARK R | JENNINGS | 1578538955 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 03202017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 02222017 | 03152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170221094 | K5931 | TOXIC MEGACOLON | ICD10 | 03202017 | 44620 | CLOSE ENTEROSTOMY-LARGE, SM INTEST | CPT | 1 | 1 | Approved | 22 | CPT | C4 | PC  to facility UR  requested info: clinical review.  Anita relays that he did admit for planned surgery. Clinical rec'd for elective abdominal procedure. Meets INPT guidelines. Fax sent to facility requesting discharge date. Per faxed clinical update  member remains in house | 02222017, 02232017, 02242017, 02252017, 02262017, 02272017, 02282017, 03012017, 03022017, 03032017, 03042017, 03052017, 03062017, 03072017, 03082017, 03092017, 03102017, 03112017, 03122017, 03132017, 03142017, 03152017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22 |
| 02242017 | 2017-02-24T15:42:34+00:00 |  | 000090333-01 | Lester | Richendollar | SPRINGFIELD HEART SURGEO | 901619 | SURENDER R | NERAVETLA | 1801843602 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03202017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 02282017 | 03172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170224063 | I2510, I481, J449, N179 | Acute kidney failure, unspecified | ICD10 | 03202017 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 0 | 1 |  | 18 | CPT | C4 | 79 year old presented to the ED with severe sob with minimal exertion.  DX with pneumonia worsening Heart failure from being in a-fib with RVR.  mbr had cardiac cath which  revealed left main LAD stenosis  moderate to severe LCX ostial segment stenosis. Cardiac  Thoracic  surgeon consulted.  CABG on 02/20/2017  with a resection of the left artial appendage triple lumen CVP inplace along with swan Ganz Catheter he was on the following drips epi  norepi  and amiodarone.  Extubated on 02/21/2017 doing well off vent 95% cpap. the mbr is on Sternal precautions (no pushing  no pulling  no lifting greater than 5lbs. Recommendation for therapies is 3hrs/day 5 days a week.  PLOF : Independent Received vmm from Brandi with SRMC IPRH  she called to inform me that the mbr  would be coming to there unit on 02/28/2017. Auth screen update  to denote admit to IPRH Received IPRH notes from Bonnie  pc to Bonnie for discharge information. she stated that the mbr was discharge on 03/17/2017 to SNF. | 02272017, 02282017, 03012017, 03022017, 03032017, 03042017, 03052017, 03062017, 03072017, 03082017, 03092017, 03102017, 03112017, 03122017, 03132017, 03142017, 03152017, 03162017, 03172017 | Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab | , Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18 |
| 02242017 | 2017-02-24T09:49:35+00:00 |  | 000080334-01 | Bernard | West | COPC CENTRAL OHIO PRIMAR | 915278 | BRIAN S | TAYLOR | 1205076569 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 03202017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 02232017 | 03162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170228020 | G9340 | Encephalopathy, unspecified | ICD10 | 03202017 |  |  |  | 0 | 0 |  | 0 |  |  | Out of network request for INPT. Sepsis and other febrile illness from SNF for intermittent fevers x 1 week. Failed OP tx of PO ATB WBC 30.76  Lactic acid 5.0  BCX positive Stage IV decubitius ulcer of sacral region with cellulitis. Fax sent to facility requesting discharge date. Continued stay review received. Remains hospitalized. Post op day 10: TF & dysphagia diet Merrem per ID WBC 15 form 16 Wound Vac removed 3/3 continues with dakins WTD BID. NRD 03/13/17 Continued stay review received. DC plan: ECF with Hospice High dollar email sent to Angela Saffell | 03232017, 03242017, 03252017, 02232017, 02242017, 02252017, 02262017, 02272017, 02282017, 03012017, 03022017, 03032017, 03042017, 03052017, 03062017, 03072017, 03082017, 03092017, 03102017, 03112017, 03122017, 03132017, 03142017, 03152017, 03162017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | , , , Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22 |
| 02252017 | 2017-02-25T19:38:36+00:00 |  | 000029654-01 | JUDITH | WARD | FCMH MED & SURG ASSOC | 935806 | DENNIS A | MESKER | 1467446146 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 03202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02252017 | 03072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170228063 | J9600, N390 | Urinary tract infection, site not specified | ICD10 | 03202017 |  |  |  | 0 | 0 |  | 0 |  |  | LVMM for UR dept  requested initial clinical review and discharge date. PC from UR  member remains in house. Review was faxed 02/27/2017  as of 03/01/2017 she is still in house. Clinical received and reviewed. Determination-INPT. From ECF SOB 88% on 2L/NC  Resp up to 32 ABG: compensated metabolic alkalosis.  Also tachy 111-110 etc. UA-Pneumonia screen positive. Breath sounds diminished with exp wheeze. Decreased breath sounds. Requiring Mask then Bipap. Dx-UTI and AE COPD Continued stay review received Remains hospitalized. Weaning Bipap. dc'd foley and tele. Discharge plan SNF Continue INPT status. NRD faxed. LVMM for UR dept requested dc date. | 02252017, 02262017, 02272017, 02282017, 03012017, 03022017, 03032017, 03042017, 03052017, 03062017, 03072017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11 |
| 03082017 | 2017-03-08T08:54:59+00:00 |  | 000078210-01 | Katrina | Whitesed | OSU INTERNAL MED LLC | 909117 | MATTHEW C | EXLINE | 1518918283 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 03202017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03072017 | 03152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170309108 | A419 | Sepsis, unspecified organism | ICD10 | 03202017 |  |  |  | 0 | 0 |  | 0 |  |  | PMH  Sacoidosis with a Trach. Presented with fatigue and increased traach sputum. Hypotensive  Tachycardic  Temp 101.1. Lactic acid 3.93  WBC 15.4. Tx with IV ATBs  Steroids  supplemental O2. | 03072017, 03082017, 03092017, 03102017, 03112017, 03122017, 03132017, 03142017, 03152017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 9, 9, 9, 9, 9, 9, 9, 9, 9 |
| 03092017 | 2017-03-09T14:37:42+00:00 |  | 000117386-01 | Linda | Johnson | MOUND FAMILY PRACTICE | 911499 | ZAHRA | HEIDARI | 1215934856 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03202017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03092017 | 03162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170314019 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 03202017 |  |  |  | 0 | 0 |  | 0 |  |  | Call placed to Tammy @ KMC for additional clinical- MBR remains in house and clinical note of 3/9 to date is what recd. |  |  |  |  | 0 |
| 03172017 | 2017-03-17T13:37:35+00:00 | 167108707075 | 000072842-01 | Vera | Holland | MOUNT CARMEL HOSPICE | 907877 | LAURIE M | CHEVALIER | 1841254372 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03202017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 03162017 | 03192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170317029 | I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 03202017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03162017, 03172017, 03182017, 03192017 | Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 02242017 | 2017-02-24T14:58:49+00:00 |  | 000073084-01 | David | Stradley | MID STATE PHYSICIANS LLP | 911023 | ARMAND A | BERMUDEZ | 1952341117 | SELECT SPECIALTY HOSPITAL ZANESVILLE | 915731 | 1861492217 | SELECT SPECIALTY HOSPITAL ZANESVILLE | 1861492217 | Long Term Acute Care Hospital | LTACH | Concurrent Review | CONC |  | SELECT SPECIALTY HOSPITAL ZANESVILLE | 03202017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 03202017 | 03212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Denied | A170224067 | J9620 | Acute and chr resp failure, unsp w hypoxia or hypercapnia | ICD10 | 03202017 |  |  |  | 0 | 0 |  | 0 |  |  | Request for LTACH admission referred to the Medical Director for determination., The request for LTACH has been reviewed and denied by the Medical Director., The Denial Letter was routed to Mgmt for review., Letter is written in appropriate language with no abbreviations and is therefore approved., Denial was faxed to Select Specialty Zanesville., Denial Letter mailed to Member via U.S. Mail., We will continue to approve a higher level of care (inpatient hospital)., Peer to Peer completed. Decision to uphold denial determination., Letter is written in appropriate language with no abbreviations and is therefore approved., Denial was faxed to Select Specialty Zanesville., Denial Letter mailed to Member via U.S. Mail., We will continue to approve a higher level of care (inpatient hospital) | 02272017 | LTACH | LTACH | Denied | 0 |
| 03062017 | 2017-03-06T10:20:03+00:00 |  | 000098026-01 | Gary | Lustgarten | MOUNT CARMEL HEALTH SYS | 920534 |  | MOUNT CARMEL MEDICAL CTR REHAB | 1578648085 | MOUNT CARMEL HEALTH SYS | 920534 | 1578648085 | MOUNT CARMEL MEDICAL CTR REHAB | 1578648085 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CTR REHAB | 03202017 | Denied | Flexible Choice PPO | Fax | Criteria Not Met | Inpatient | 03202017 | 03212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Pre-Service | Denied | A170306014 | G959 | Disease of spinal cord, unspecified | ICD10 | 03202017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Attached clinical documents reviewed along with review of Power Chart, TCT Barbara MCW Acute Inpatient Rehab 614 234 1362 to Inform of denial |  |  |  |  | 0 |
| 03102017 | 2017-03-10T15:32:16+00:00 |  | 000113202-01 | Martha | Moore | ALPHA MEDICAL SRVS LLC | 913771 | ELIO | VENTRESCA | 1811904139 | SELECT SPECIALTY HOSPITAL | 900155 | 1871592386 | SELECT SPECIALTY HOSPITAL | 1871592386 | Long Term Acute Care Hospital | LTACH | Pre-Service | PRE |  | SELECT SPECIALTY HOSPITAL | 03202017 | Denied | MediGold Classic Preferred | Fax | Services Continued at Higher Level (LTACH) | Inpatient | 03202017 | 03212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Pre-Service | Denied | A170310066 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 03202017 |  |  |  | 0 | 0 |  | 0 |  |  | Dr. Jacob Werkin MD order to discharge to LTACH for vent weaning to CPAP; Vent placement of 03/03/17; PEG tube 03/10/17  foley dc'd 03/09/17  acute fever accompanied by acute leukocytosis. Wound C/D/I;, Verbal LTACH denial 03/11/17 @ 17:45 pm, PCT Darleta Milton  614-458-9145  PRF for Select Medical; left conf'd VM requesting return call - denial of LTACH admission  technical difficulty at insurance company  unable to send Denial Letter - 03/10/17; 03/11/17, PCT Amber  LSW  ICU-West; discussed LTACH denial; per Amber  no notice of discharge has been rcv'd by staff at this time; no further questions at this time., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
