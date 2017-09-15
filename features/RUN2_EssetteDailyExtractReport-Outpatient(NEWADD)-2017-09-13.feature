Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-09-13
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-09-13
	Given I save the auth class "<auth_class>" to a variable
	And I sign in to the application
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
	And in the "Certification" page I save the "<service_code>" service codes
	And the test pauses for "2" seconds
	And in the "certification" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image and save the variable
	And the test pauses for "2" seconds
	And I press "Control + S"
	And the test pauses for "3" seconds
	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "3" seconds
	And in the "authorized_services" page I should see the "amounts_and_dates" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter the first quantity requested "<qty_reqd>" into the "how_many_requested" image and save the variable
	And in the "authorized_services" page I enter the first quantity approved "<qty_appr>" into the "how_many_authorized" image and save the variable
	And in the "authorized_services" page I convert "<authorized_date>" into the "dates_begin_requested" image and save the variable
	And in the "authorized_services" page I convert "<expiration_date>" into the "dates_end_requested" image and save the variable
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "$" into the "ref_prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And in the "provider_search" page I enter "<requesting_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "4" seconds
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
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I copy the provider number to the clipboard and save the variable
	And in the "authorized_services" page I should see the "loaded_sidebar" image
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
	And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
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
	And the test pauses for "2" seconds
	And I determine whether something is PAR or NONPAR
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I copy the provider number to the clipboard and save the variable

	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "3" seconds

	And in the "authorized_services" page I enter the first service code into the "proc_number" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And in the "authorized_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds

	And I input the alternate procedure codes if there are any

	And the test pauses for "4" seconds
	And I press "F8"
	And the test pauses for "4" seconds
	And I press ENTER graphically
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

	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
	And the test pauses for "3" seconds
	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "4" seconds
	And I press ENTER graphically
	And the test pauses for "4" seconds
	And I close "Internet Explorer"

	Examples:
		| requested_date  | military_date      | other_reference_# |	member_id | member_first_name |	member_last_name | practice_name | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name  | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	| servicing_provider_npi_# |	sub_class  | sub_class_code | type  |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm | auth_for_payment | days_used_prior | dc | denc_date | mds_date | nomnc_date | total_days | total_skilled_days | auth_type      | auth_status    |	auth_number |	diagnosis_code     |	diagnosis                                          			|	diagnosis_type |	auth_modified_date | service_code       | service_description                                                    | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                  | care_date | actual_level_of_care | approved_level_of_care | determination | auth_approval_days |
| 08082017 | 2017-08-08T10:32:45+00:00 |  | 000022367-01 | ARNOLD | CRABTREE | MOUNT CARMEL HLTH PRVDRS | 926568 | VICTORIA | GREY | 1538405238 | COMMUNITY SURG SUPPLY OF TOMS RIVER | 919608 | 1740436658 | COMMUNITY SURG SUPPLY OF TOMS RIVER | 1740436658 | DME | DME | Pre-Service | PRE |  | COMMUNITY SURG SUPPLY OF TOMS RIVER | 09132017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 09132017 | 12122017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170808119 | J449, J9611 | Chronic respiratory failure with hypoxia | ICD10 | 09132017 | E0466, E1390, K0738 | Portable gas oxygen system | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 91, 91, 91 | HCPCS | HC | PHONE CALL PLACED TO CORNERSTONE TO SEE IF THEY COULD SUPPLY TRILOGY W/NIOV.  SPOKE TO ELANA AND MARK RESP TX.  NEITHER HAD HEARD OF NIOV  OR THE DME COMPANY REQUESTING.  MBR CURRENTLY HAS HIS O2 E1390 SUPPLIED BY CORNERSTONE.  CORNERSTONE IS IN-NETWORK PROVIDER FOR TRILOGY.  THE CPT CODE K0738 PER  ELANA AND MARK IS NOT A CODE FOR NON-INVASIVE VENTILATOR  BUT FOR OXYGEN.  IT COMES UP AS A PORTABLE OXYGEN SUPPLY SYSTEM IN THIS SYSTEM., Spoke to DME company requesting information as the request was somewhat vague.    Provider reports that they are requesting Trilogy an Oxygen and that is all.  Request amended and sent for review for denal as services are available in-network., Letter is written in appropriate language with no abbreviations and is therefore approved., Clarification.   DME provider is not asking for NIOV. |  |  |  |  | 0 |
| 08312017 | 2017-08-31T15:58:59+00:00 |  | 000082234-01 | Gerard | Gerlach | OSU PSYCHIATRY LLC | 926895 | JULIE N | HYMAN | 1366631681 | OSU PSYCHIATRY LLC | 901065 | 1194773317 | OSU PSYCHIATRY LLC | 1194773317 | OP Behavioral Health | OP BH | Pre-Service | PRE |  | OSU PSYCHIATRY LLC | 09132017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 09052017 | 12052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170831155 | F1010, F332, F411 | Generalized anxiety disorder | ICD10 | 09132017 | 99214, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3 | 3, 3 | Approved, Approved | 92, 92 | HCPCS | HC | Requested clinical documentation from provider |  |  |  |  | 0 |
| 09122017 | 2017-09-12T11:46:38+00:00 |  | 000103878-01 | PATRICIA | ROBINSON | DR BRADLEY C WILSON INC | 908580 | BRADLEY C | WILSON | 1225020878 | CHILDRENS HOSPITAL | 936516 | 1134152986 | CHILDRENS HOSPITAL | 1134152986 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | CHILDRENS HOSPITAL | 09132017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 09122017 | 10122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170912135 | G723 | Periodic paralysis | ICD10 | 09132017 | 20205 | BIOPSY, MUSCLE, DEEP | CPT | 1 | 1 | Approved | 31 | CPT | C4 | Outreach to provider for clinical documentation made., This has been re-scheduled for 10/31/17. |  |  |  |  | 0 |
| 09052017 | 2017-09-05T11:23:07+00:00 |  | 000034642-01 | ELSIE | WILCOX | JAMES CANCER HOSPITAL | 936501 |  | JAMES CANCER HOSPITAL | 1124127683 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09132017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 09182017 | 12182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170905070 | C7989 | Secondary malignant neoplasm of other specified sites | ICD10 | 09132017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 09072017 | 2017-09-07T09:38:27+00:00 |  | 000032978-01 | RICHARD | GRIFFIN | ORTHO TRAUMA SRVS LTD | 911031 | JOAQUIN | CASTANEDA | 1801932447 | ORTHO TRAUMA SRVS LTD | 926774 | 1285622688 | ORTHOPEDIC TRAUMA SERVICES LTD | 1285622688 | Out of Network Services | OONS | Pre-Service | PRE |  | ORTHOPEDIC TRAUMA SERVICES LTD | 09132017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 09072017 | 10072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170907123 | S2241XD, M9712XA | PERIPROSTH FRACTURE AROUND INTERNAL PROSTH L KNEE JT, INIT | ICD10 | 09132017 | 99214, 71111, 73562 | KNEE A&P C OBLIQUE(S) MIN 3 VIEWS | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09062017 | 2017-09-06T13:50:15+00:00 |  | 000072657-01 | Wayne | Jenkins | OSU GENERAL INTL MED LLC | 926994 |  | OSU GENERAL INTERNAL MEDICINE LLC | 1689919599 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09132017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 09112017 | 12112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170907081 | C189, C787 | Secondary malig neoplasm of liver and intrahepatic bile duct | ICD10 | 09132017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
