Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-02-01-OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-02-01-OBS
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
And in the "Certification" page I enter "OP" into the "Auth Type" field
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
| 02012017 | 2017-02-01T09:53:06+00:00 | FIN0264510187030 | 000038688-01 | IRENE | WILLIAMS | CEN OH PRIMARY CARE PHYS | 916233 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02012017 | Denied | MediGold Classic Preferred | Reports | Observation | Inpatient | 02012017 | 02022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170201010 | R112 | Nausea with vomiting, unspecified | ICD10 | 02012017 |  |  |  | 0 | 0 |  | 0 |  |  | Received per vista report dated 02/01/2017, Admit date 01/31/2017, Admit type; observation, Clinical documentation reviewed in PowerChart | 01312017 | Observation |  | Approved | 1 |
| 02012017 | 2017-02-01T10:17:36+00:00 | FIN0259918857029 | 000010050-01 | JOHN | HENINGER | CEN OH PRIMARY CARE PHYS | 916233 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02012017 | Denied | MediGold Classic Preferred | Reports | Observation | Inpatient | 02012017 | 02022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170201015 | K523 | INDETERMINATE COLITIS | ICD10 | 02012017 |  |  |  | 0 | 0 |  | 0 |  |  | Received per vista report dated 01/30/2017, Admit date 01/29/2017, Admit type: observation, Clinical documentation reviewed in PowerChart | 01292017 | Observation | Observation | Approved  | 3 |
| 02012017 | 2017-02-01T11:08:35+00:00 | FIN0257224297029 | 000019742-01 | ELAINE | PHILLIPS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02012017 | Denied | MediGold Classic Preferred | Reports | Observation | Inpatient | 02012017 | 02022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170201023 | D696 | Thrombocytopenia, unspecified | ICD10 | 02012017 |  |  |  | 0 | 0 |  | 0 |  |  | Received per vista report dated 01/30/2017, Admit date 01/29/2017, Admit type: observation, Clinical documentation reviewed in PowerChart | 01292017 | Observation | Observation | Approved | 3 |
| 01292017 | 2017-01-29T11:59:53+00:00 | 257487417028 | 000090172-01 | George | Gholson | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02012017 | Denied | MediGold Essential Care | Reports | Observation | Inpatient | 02012017 | 02022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170201031 | L0390 | Cellulitis, unspecified | ICD10 | 02012017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Notified per mt carmel vista report dated 01/29/17 that pt presented for admission on 01/28/17 thru ER with c/o rt leg pain.  Pt was admitted in Observation status | 01282017 | Observation | Observation | Approved  | 4 |
