Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-02-07-SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-02-07-SNF
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
	And in the "certification" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image and save the variable
	And the test pauses for "2" seconds
	And I press "Control + S"
	And the test pauses for "3" seconds
	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "3" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "3" seconds
	And in the "authorized_services" page I should see the "loaded_sidebar" image
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
	And in the "authorized_services" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds

	And I input the alternate procedure codes if there are any

	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "5" seconds

	And I input the notes if any are contained in "<notes>"
	And the test pauses for "5" seconds

	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
	And the test pauses for "3" seconds
	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

	Examples:
		| requested_date  | military_date      | other_reference_# |	member_id | member_first_name |	member_last_name | practice_name | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name  | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	| servicing_provider_npi_# |	sub_class  | sub_class_code | type  |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm | auth_for_payment | days_used_prior | dc | denc_date | mds_date | nomnc_date | total_days | total_skilled_days | auth_type      | auth_status    |	auth_number |	diagnosis_code     |	diagnosis                                          			|	diagnosis_type |	auth_modified_date | service_code       | service_description                                                    | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                  | care_date | actual_level_of_care | approved_level_of_care | determination | auth_approval_days |
#| 02022017 | 2017-02-02T09:20:43+00:00 |  | 000022746-01 | ESTHER | MARRIOTT | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | WEST PARK CARE CENTER | 947403 | 1720449788 | WEST PARK CARE CENTER LLC | 1720449788 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WEST PARK CARE CENTER LLC | 02072017 | Denied | MediGold Classic Preferred | Fax | SNF | Inpatient | 02072017 | 02082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170203074 | A049, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 02162017 |  |  |  | 0 | 0 |  | 0 |  |  | D/C info  NOMNC  MDS with RUG of RVB10 | 01312017, 02012017, 02022017, 02032017, 02042017, 02052017, 02062017, 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
#| 02022017 | 2017-02-02T10:30:32+00:00 |  | 000020264-01 | MARY | MUSIC | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | ASTORIA PLACE OF COLUMBU | 942462 | 1255725438 | ASTORIA PLACE OF COLUMBUS LLC | 1255725438 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ASTORIA PLACE OF COLUMBUS LLC | 02072017 | Denied | MediGold Classic Preferred | Fax | SNF | Inpatient | 02072017 | 02082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170204002 | M25569 | Pain in unspecified knee | ICD10 | 02072017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 01302017, 01312017, 02012017, 02022017, 02032017, 02042017, 02052017, 02062017, 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
#| 02022017 | 2017-02-02T12:57:27+00:00 |  | 000104072-01 | RICHARD | SNELL | INPATIENT CNSLT OF OH IN | 905617 | GARY J | PALMER | 1053316893 | HEARTLAND OF CENTERVILLE OH LLC | 905917 | 1801836655 | HEARTLAND OF CENTERVILLE OH LLC | 1801836655 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CENTERVILLE OH LLC | 02072017 | Denied | MediGold Essential Care | Fax | SNF | Inpatient | 02072017 | 02082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170204004 | N390 | Urinary tract infection, site not specified | ICD10 | 02072017 |  |  |  | 0 | 0 |  | 0 |  |  | DC info NOMNC MDS with RUG of RVL60 | 01302017, 01312017, 02012017, 02022017, 02032017, 02042017, 02052017, 02062017, 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
#| 02022017 | 2017-02-02T16:36:55+00:00 |  | 000106918-01 | Victoria | Dinsdale | COLS INPATIENT CARE INC | 947907 | SHILPA | BATHINI | 1083957500 | MONTEREY CARE CENTER | 936519 | 1245239862 | MONTEREY CARE CENTER | 1245239862 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MONTEREY CARE CENTER | 02072017 | Denied | MediGold Essential Care | Fax | SNF | Inpatient | 02072017 | 02082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170204008 | N390, S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 02072017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 01312017, 02012017, 02022017, 02032017, 02042017, 02052017, 02062017, 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
#| 02032017 | 2017-02-03T12:01:45+00:00 |  | 000079604-01 | Patricia | Gram | GREENE MEM HSP SRVS INC | 900736 | LATHA | VENKATESH | 1760487979 | HOSPITALITY OPERATING EAST LLC | 931472 | 1558703686 | HOSPITALITY OPERATING EAST LLC | 1558703686 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOSPITALITY OPERATING EAST LLC | 02072017 | Denied | MediGold Classic Preferred | Fax | SNF | Inpatient | 02072017 | 02082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170204011 | R0609, R531 | Weakness | ICD10 | 02072017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02022017, 02032017, 02042017, 02052017, 02062017, 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
#| 02032017 | 2017-02-03T15:20:33+00:00 |  | 000090094-01 | David | Mccann | TO, NHA T | 916638 | NHA T | TO | 1700997558 | OAKWOOD VILLAGE | 916907 | 1326004409 | OAKWOOD VILLAGE | 1326004409 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OAKWOOD VILLAGE | 02072017 | Denied | MediGold Classic Preferred | Fax | SNF | Inpatient | 02072017 | 02082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170206021 | Z96651 | Presence of right artificial knee joint | ICD10 | 02072017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02022017, 02032017, 02042017, 02052017, 02062017, 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
#| 02062017 | 2017-02-06T10:27:07+00:00 |  | 000109097-01 | Beverly | Erbes | GERIATRIC ASSOC OF ZANES | 922084 | WILLIAM A | SHADE | 1104816321 | CAMBRIDGE HEALTHCARE AND | 930700 | 1053662429 | ASTORIA PLACE OF CAMBRIDGE | 1053662429 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ASTORIA PLACE OF CAMBRIDGE | 02072017 | Denied | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 02072017 | 02082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170206098 | J15211, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 02072017 |  |  |  | 0 | 0 |  | 0 |  |  | Admit date per SNF face sheet is 1/30/17, Updated Chris that payment is per MDS as she sent a request for an adjustment on the RUG. | 01302017, 01312017, 02012017, 02022017, 02032017, 02042017, 02052017, 02062017, 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
#| 02062017 | 2017-02-06T11:52:14+00:00 |  | 000061035-01 | ARTHUR | WARD | COLS INPATIENT CARE INC | 948518 | LUIZA | BALABANYAN | 1174866404 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 02072017 | Denied | MediGold Classic Preferred | Fax | SNF | Inpatient | 02072017 | 02082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170206102 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 02152017 |  |  |  | 0 | 0 |  | 0 |  |  | KEPRO FTA filed, D/C info  NOMNC  DENC AND MDS Received | 02032017, 02042017, 02052017, 02062017, 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
#| 02062017 | 2017-02-06T13:24:10+00:00 |  | 000074238-01 | Janice | Richardson | GERIATRIC ASSOC OF ZANES | 922084 | WILLIAM A | SHADE | 1104816321 | BECKETT HOUSE AT NEW CONCORD | 924196 | 1063403582 | BECKETT HOUSE AT NEW CONCORD | 1063403582 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | BECKETT HOUSE AT NEW CONCORD | 02072017 | Denied | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 02072017 | 02082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170207016 | R262, S72002S | Fracture of unspecified part of neck of left femur, sequela | ICD10 | 02072017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02032017, 02042017, 02052017, 02062017, 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
#| 02062017 | 2017-02-06T13:25:45+00:00 |  | 000023512-01 | BERTHA | SMITH | COPC CENTRAL OHIO PRIMAR | 936768 | PAUL J | GRANDINETTI | 1972588689 | TRADITIONS AT STYGLER ROAD | 939367 | 1437255569 | TRADITIONS AT STYGLER ROAD | 1437255569 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT STYGLER ROAD | 02072017 | Denied | MediGold Classic Preferred | Fax | SNF | Inpatient | 02072017 | 02082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170207017 | S72042D | Disp fx of base of nk of l femr, 7thD | ICD10 | 02162017 |  |  |  | 0 | 0 |  | 0 |  |  | DC info NOMNC MDS with RUG of RUB10 | 02032017, 02042017, 02052017, 02062017, 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
#| 02062017 | 2017-02-06T13:29:16+00:00 |  | 000010601-01 | D | MILES | COPC CENTRAL OHIO PRIMAR | 936768 | PAUL J | GRANDINETTI | 1972588689 | TRADITIONS AT STYGLER ROAD | 939367 | 1437255569 | TRADITIONS AT STYGLER ROAD | 1437255569 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT STYGLER ROAD | 02072017 | Denied | MediGold Classic Preferred | Fax | SNF | Inpatient | 02072017 | 02082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170207019 | I69331 | Monoplg upr lmb fol cerebral infrc aff right dominant side | ICD10 | 02072017 |  |  |  | 0 | 0 |  | 0 |  |  | FTA FILED ON 2/10/17., FTA LOST  SNF DID NOT SEND RECORDS. | 02042017, 02052017, 02062017, 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
#| 02062017 | 2017-02-06T13:32:53+00:00 |  | 000044021-01 | ROBERT | BILLHEIMER | COPC CENTRAL OHIO PRIMAR | 936768 | PAUL J | GRANDINETTI | 1972588689 | TRADITIONS AT STYGLER ROAD | 939367 | 1437255569 | TRADITIONS AT STYGLER ROAD | 1437255569 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT STYGLER ROAD | 02072017 | Denied | MediGold Medical Only | Fax | SNF | Inpatient | 02072017 | 02082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170207021 | I69354 | Hemiplga following cerebral infrc affecting left nondom side | ICD10 | 02072017 |  |  |  | 0 | 0 |  | 0 |  |  | RECEIVED DC INFO; NOMNC; MDS | 02032017, 02042017, 02052017, 02062017, 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
#| 02062017 | 2017-02-06T14:46:53+00:00 |  | 000027105-01 | ELSIE | BEAVERS | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | PICKERINGTON NURSING & REHABILITATIO | 930695 | 1154747269 | PICKERINGTON NURSING & REHABILITATIO | 1154747269 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PICKERINGTON NURSING & REHABILITATIO | 02072017 | Denied | MediGold Classic Preferred | Fax | SNF | Inpatient | 02072017 | 02082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170207023 | N390 | Urinary tract infection, site not specified | ICD10 | 02072017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02022017, 02032017, 02042017, 02052017, 02062017, 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
#| 02062017 | 2017-02-06T15:26:10+00:00 |  | 000013502-01 | WANDA | MOREHART | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 02072017 | Denied | MediGold Classic Preferred | Fax | SNF | Inpatient | 02072017 | 02082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170207028 | M6281, N390, Z9181 | History of falling | ICD10 | 02072017 |  |  |  | 0 | 0 |  | 0 |  |  | MDS received, out to hosp 2/10/17 | 02022017, 02032017, 02042017, 02052017, 02062017, 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
#| 02062017 | 2017-02-06T15:36:43+00:00 |  | 000105019-01 | Martha | Secrest | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | SUNBRIDGE CIRCLEVILLE HL | 907244 | 1447206503 | CIRCLEVILLE CARE & REHAB CENTER | 1447206503 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CIRCLEVILLE CARE & REHAB CENTER | 02072017 | Denied | MediGold Essential Care | Fax | SNF | Inpatient | 02072017 | 02082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170207030 | M6281, N390 | Urinary tract infection, site not specified | ICD10 | 02072017 |  |  |  | 0 | 0 |  | 0 |  |  | MDS with RUG of RVA60 received | 02032017, 02042017, 02052017, 02062017, 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
#| 02062017 | 2017-02-06T17:08:39+00:00 |  | 000098844-01 | Glen | Matthews | CHE FU KUO MD PHD | 915220 | CHE FU | KUO | 1659367068 | HEARTLAND OF MARIETTA OH LLC | 920761 | 1164466942 | HEARTLAND OF MARIETTA OH LLC | 1164466942 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARIETTA OH LLC | 02072017 | Denied | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 02072017 | 02082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170207063 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 02072017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02032017, 02042017, 02052017, 02062017, 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
