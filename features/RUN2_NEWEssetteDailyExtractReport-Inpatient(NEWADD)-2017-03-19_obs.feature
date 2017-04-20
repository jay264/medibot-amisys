Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-19_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-19_OBS
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
| 02242017 | 2017-02-24T08:39:44+00:00 |  | 000074762-01 | Betty | Shriner | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03172017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 02232017 | 02252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170227080 | M25551 | Pain in right hip | ICD10 | 03172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |
| 03072017 | 2017-03-07T11:31:21+00:00 |  | 000114919-01 | Judith | Hill | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 03172017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 03062017 | 03092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170309077 | D72829, R4182 | Altered mental status, unspecified | ICD10 | 03172017 |  |  |  | 0 | 0 |  | 0 |  |  | Presented with AMS vomiting Diarrhea and a pressure ulcer on her sacrum., Slighty Tachycardic HR 117  overall hemodynamically stable on admit. WBC 13.4. Bld cx pending. UA pending. Stool cx pending. Tx IV ATBs  IVFs., Facility requesting a second review. Submitted to the Medical Director for determination. | 03062017, 03072017, 03082017, 03092017 | Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 03132017 | 2017-03-13T09:48:50+00:00 |  | 000083865-01 | Mary | Kinser | HMP OF OHIO PC | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03172017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03102017 | 03162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170315019 | I509, S37009A | Unspecified injury of unspecified kidney, initial encounter | ICD10 | 03172017 |  |  |  | 0 | 0 |  | 0 |  |  | Presented with worsening SOB  BLE edema  frequent falls.  CXR- neg for acute disease. MRI- T5 compression fx. EKG- no ST or T changes.  WBC 13.2. Procalcitonin neg.  Tx: IV Diuresis  pain control  and PT/OT., Call to UR and s/w Allison. Mbr discharged 3/16. LOS 6 days.  She did not have any additional clinical information to provide. | 03102017, 03112017, 03122017, 03132017, 03142017, 03152017, 03162017 | Observation, Observation, Observation, Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation, Observation, Observation, Observation | Approved, Approved, Approved, Approved, Approved, Approved,  | 7, 7, 7, 7, 7, 7, 7 |
| 03132017 | 2017-03-13T09:47:17+00:00 |  | 000086995-01 | Deborah | Chapman | HMP OF OHIO PC | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03172017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03102017 | 03142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170315064 | R0602, R0902 | Hypoxemia | ICD10 | 03172017 |  |  |  | 0 | 0 |  | 0 |  |  | Recently discharged on 3/7. Known Myleodysplastic syndrome on Chemo presented with fatigue  confusion and anemia. Plt 8. Tranfused 2u PRBCs Discharged to Hospice on 3/14., The Medical Director determined Observation. | 03102017, 03112017, 03122017, 03132017, 03142017 | Observation, Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation, Observation | Approved, Approved, Approved, Approved,  | 5, 5, 5, 5, 5 |
| 03162017 | 2017-03-16T10:16:17+00:00 |  | 000025007-01 | PATRICIA | LOSACCO | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03172017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03152017 | 03162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170316017 | A419 | Sepsis, unspecified organism | ICD10 | 03172017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03152017, 03162017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
