Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-16_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-16_URGEMERG
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
| 01312017 | 2017-01-31T16:00:25+00:00 |  | 000075865-01 | Patricia | Wheeler | MARIETTA HLTH CARE PHYS | 930535 | ROMAN V | PETROV | 1437266822 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 03162017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 02022017 | 02042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170201017 | R911 | Solitary pulmonary nodule | ICD10 | 03162017 | 31622, 32999, 32480, 32100, 32663 | THORACOSCOPY, SURGICAL; | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 3, 3, 3, 3, 3 | CPT | C4 | Attempted to call UR to request Clinical information. Fast busy x3., Call to UR. LVM requesting clinical documentation for the admission., VATS with RL lobectomy  lysis of adhesion's and plueral bx. | 02022017, 02032017, 02042017 | Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient | Approved, Approved,  | 3, 3, 3 |
| 02152017 | 2017-02-15T11:27:50+00:00 | FIN0167139967045 | 000013502-01 | WANDA | MOREHART | HMP OF OHIO PC | 942960 | TAMARA J | SCOTT | 1871852863 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 02142017 | 03092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170215049 | I469 | Cardiac arrest, cause unspecified | ICD10 | 03162017 |  |  |  | 0 | 0 |  | 0 |  |  | Received per vista report dated 02/15/2017, Admit date 02/14/2017, admit type: inpatient, Clinical documentation reviewed in PowerChart, remains unchanged.. on vent.. nonresponsive., s.p trach on 02/21/2017., for possible transition to palliative care. Palliative care team following., PT EXPIRED 03.09.2017 AT 0300 | 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017, 02272017, 02282017, 03012017, 03022017, 03032017, 03042017, 03052017, 03062017, 03072017, 03082017, 03092017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24 |
| 03022017 | 2017-03-02T09:15:28+00:00 |  | 000088727-01 | Michael | Altman | MERCY HEALTH PHYSICIANS | 920878 | JOHN | LINZ | 1053316315 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 03162017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 03092017 | 03112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170302024 | E11610, M79672 | Pain in left foot | ICD10 | 03162017 | 28730 | ARTHRODESIS OTHER JOINTS LOWER EXT | CPT | 1 | 1 | Approved | 3 | CPT | C4 | LVMM for UR dept  inquired if member admitted for elective surgery., LVMM for UR dept. inquired if member admitted for planned procedure. Requested clinical review and discharge date., Clinical received and reviewed. Member with post-op complication: HTN due to pain and altered dosing of medications.  Also has a history of prolonged emergence from anesthesia with combativeness and has mental health issues  needing closer observation.  Start date is not clear.  , INPT determination, LVMM for UR at Mercy Anderson  inquired about start date.  I see both 03/06 and 03/09. | 03092017, 03102017, 03112017 | Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient | Approved, Approved,  | 3, 3, 3 |
| 03032017 | 2017-03-03T09:12:17+00:00 | 250336757061 | 000004630-01 | DORIS | ELSWICK | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 03022017 | 03092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170303012 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 03162017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Last inpatient admission 02/11/2017 thru 02/22/2017.  Readmitted in less than 30 days., Clinical documentation reviewed in PowerChart | 03022017, 03032017, 03042017, 03052017, 03062017, 03072017, 03082017, 03092017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 8, 8, 8, 8, 8, 8, 8, 8 |
| 03032017 | 2017-03-03T15:54:50+00:00 |  | 000011318-01 | MARY | GETZ | HOCKING VALLEY COMMUNIT HOSPITAL | 945237 |  | HOCKING VALLEY COMMUNIT HOSPITAL | 1033263835 | HOCKING VALLEY COMMUNIT HOSPITAL | 945237 | 1033263835 | HOCKING VALLEY COMMUNIT HOSPITAL | 1033263835 | Inpatient | IP | Concurrent Review | CONC |  | HOCKING VALLEY COMMUNIT HOSPITAL | 03162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03022017 | 03132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170308037 | E875, G9340, N170 | Acute kidney failure with tubular necrosis | ICD10 | 03162017 |  |  |  | 0 | 0 |  | 0 |  |  | 82 year old female  transferred from the behavioral health unit to ICU at Hocking Valley Community Hospital with uremic encephalopathy  and acute kidney injury with severe hyperkalemia. K+ 5.3 Creat up from 2.6 to 3.3, Received pc from Jenny with UR  stating that the mbr would be going back to the behavioral unit once she is stable. She wanted to know when to send the request in  informed jenny that she could send request in as soon as possible and once the mbr is discharged to let us know.   Case staffed with Robin CM. | 03022017, 03032017, 03042017, 03052017, 03062017, 03072017, 03082017, 03092017, 03102017, 03112017, 03122017, 03132017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 |
| 03092017 | 2017-03-09T11:23:28+00:00 |  | 000088875-01 | Harold | Tipton | BEERS, RICHARD T | 903798 | RICHARD T | BEERS | 1316912306 | KETTERING MEDICAL CENTER | 912043 | 1043233984 | KETTERING MEDICAL CTR REHABILITATION | 1952324899 | Inpatient Rehabilitation | IP REHAB | Initial Review | INIT |  | KETTERING MEDICAL CTR REHABILITATION | 03162017 | Denied | MediGold Essential Care | Fax | Not Medically Necessary | Inpatient | 03162017 | 03172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Initial Review | Denied | A170309048 | I6201 | Nontraumatic acute subdural hemorrhage | ICD10 | 03162017 |  |  |  | 0 | 0 |  | 0 |  |  | Call placed to Laura W @ KMC IPRH- all notes are current and nothing further to send for additional review. |  |  |  |  | 0 |
