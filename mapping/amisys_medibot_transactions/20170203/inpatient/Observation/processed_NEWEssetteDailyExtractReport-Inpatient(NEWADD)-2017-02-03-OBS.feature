Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-02-03-OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-02-03-OBS
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
| 02022017 | 2017-02-02T08:42:23+00:00 |  | 000023754-01 | JAMES | ODELL | CEN OH PRIMARY CARE PHYS | 916233 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02032017 | Denied | MediGold Classic Preferred | Reports | Observation | Inpatient | 02032017 | 02042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170202006 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02032017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Clinical documentation reviewed in PowerChart | 02012017| Observation | Observation | Approved  | 2 |
| 02022017 | 2017-02-02T10:10:05+00:00 |  | 000038324-01 | HAROLD | AISEL | MOUNT CARMEL HLTH | 917578 | NOAH J | JONES | 1326178815 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02032017 | Denied | MediGold Classic Preferred | Reports | Observation | Inpatient | 02032017 | 02042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170202027 | I6521 | Occlusion and stenosis of right carotid artery | ICD10 | 02032017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Clinical documentation reviewed in PowerChart | 02012017| Observation | Observation | Approved  | 2|
| 02022017 | 2017-02-02T10:23:26+00:00 | FIN0250792577032 | 000012281-01 | Mary | Maynard | CEN OH PRIMARY CARE PHYS | 916233 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02032017 | Denied | MediGold Classic Preferred | Reports | Observation | Inpatient | 02032017 | 02042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170202030 | T82510A | Breakdown of surgically created AV fistula, init | ICD10 | 02032017 |  |  |  | 0 | 0 |  | 0 |  |  | Received per vista report dated 02/02/2017, Admit date 02/01/2017, Admit type: observation, Clinical documentation reviewed in PowerChart, 02/02/2017-, PROCEDURES:, 1.  Left upper extremity arteriovenous shuntogram., 2.  Left upper extremity arteriovenous shunt open thrombectomy without revision., 3.  Repeat left upper extremity arteriovenous shuntogram with graft angioplasty x2 with additional vein angioplasty with 7 mm x 40 mm balloon., POSTOPERATIVE DIAGNOSIS:, Thrombosed left upper extremity arteriovenous shunt., ANESTHESIA:, Monitored anesthesia care., OK to d/c pt home post HD today if remains stable., *APPROVED OBS. | 02012017 | Observation | Observation | Approved  | 2 |
| 02022017 | 2017-02-02T10:24:09+00:00 |  | 000027719-01 | CLIFTON | BASHAM | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02032017 | Denied | MediGold Classic Preferred | Reports | Observation | Inpatient | 02032017 | 02042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170202031 | R079 | Chest pain, unspecified | ICD10 | 02032017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Clinical documentation reviewed in PowerChart | 02012017 | Observation | Observation | Approved  | 2 |
| 02022017 | 2017-02-02T15:57:22+00:00 |  | 000093176-01 | Virginia | Mullins | CEN OH PRIMARY CARE PHYS | 916233 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02032017 | Denied | MediGold Classic Preferred | Reports | Observation | Inpatient | 02032017 | 02042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170202110 | I5023 | Acute on chronic systolic (congestive) heart failure | ICD10 | 02032017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Clinical documentation reviewed in PowerChart | 01292017 | Observation| Observation | Approved  | 5|
| 02022017 | 2017-02-02T16:01:57+00:00 |  | 000027105-01 | ELSIE | BEAVERS | FAHRIG, CHARLES M | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02032017 | Denied | MediGold Classic Preferred | Reports | Observation | Inpatient | 02032017 | 02042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170202111 | R531 | Weakness | ICD10 | 02032017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Clinical documentation reviewed in PowerChart | 01292017 | Observation| Observation | Approved | 5 |
| 02012017 | 2017-02-01T09:31:32+00:00 |  | 000117192-01 | Rowland | Porter | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 02032017 | Denied | MediGold Classic Preferred | Fax | Observation | Inpatient | 02032017 | 02042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170203008 | M6281 | Muscle weakness (generalized) | ICD10 | 02032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |
