Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-02-10
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-02-10
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
| 02092017 | 2017-02-09T10:08:39+00:00 |  | 000046922-01 | ROLAND | PHILLIPS | CIRCLEVILLE CENTER | 934811 | YADWINDER | SINGH | 1083608830 | TRADITIONS AT CHILLICOTH | 906071 | 1457305997 | TRADITIONS AT CHILLICOTHE | 1457305997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | TRADITIONS AT CHILLICOTHE | 02102017 | Denied | MediGold Classic Preferred | Fax | SNF | Inpatient | 02102017 | 02112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170209102 | N186 | End stage renal disease | ICD10 | 02102017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 02092017 | 2017-02-09T11:30:59+00:00 |  | 000084922-01 | Margaret | Wharton | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LOGAN HEALTH CARE CENTER | 930684 | 1518384395 | LOGAN HEALTH CARE CENTER | 1518384395 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LOGAN HEALTH CARE CENTER | 02102017 | Denied | MediGold Essential Care | Fax | SNF | Inpatient | 02102017 | 02112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170209120 | C679 | Malignant neoplasm of bladder, unspecified | ICD10 | 02102017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02032017, 02042017, 02052017 | SNF, SNF, SNF | SNF, SNF, SNF | Approved, Approved, Approved | 0, 0, 0 |
| 02092017 | 2017-02-09T11:34:12+00:00 |  | 000087635-01 | Henry | Blaskie Jr | HOSPICE OF CENTRAL OHIO | 904131 | STUART J | KANTER | 1730122193 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 02102017 | Denied | MediGold Classic Preferred | Fax | SNF | Inpatient | 02102017 | 02112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170209124 | I10, J189, M3210, Z9181 | History of falling | ICD10 | 02102017 |  |  |  | 0 | 0 |  | 0 |  |  | MDS with RUG of RVC10 received | 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 02092017 | 2017-02-09T12:06:15+00:00 |  | 000066283-01 | Patricia | Mccurdy | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 02102017 | Denied | MediGold Classic Preferred | Fax | SNF | Inpatient | 02102017 | 02112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170209127 | I10, J189 | Pneumonia, unspecified organism | ICD10 | 02102017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017, 02272017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 02092017 | 2017-02-09T12:16:24+00:00 |  | 000052766-01 | VIRGINIA | WEBB | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 02102017 | Denied | MediGold Classic Preferred | Fax | SNF | Inpatient | 02102017 | 02112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170209130 | I5023, J90 | Pleural effusion, not elsewhere classified | ICD10 | 02102017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017, 02272017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 02092017 | 2017-02-09T13:26:17+00:00 |  | 000031368-01 | BARBARA | SIMPKINS | HARDING MEM HLTHCARE | 900889 | GHULAM | IDREES | 1447218292 | HEARTLAND OF MARION | 905550 | 1396787818 | HEARTLAND OF MARION | 1396787818 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF MARION | 02102017 | Denied | MediGold Classic Preferred | Fax | SNF | Inpatient | 02102017 | 02112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170210007 | J209 | Acute bronchitis, unspecified | ICD10 | 02102017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 02092017 | 2017-02-09T13:28:00+00:00 |  | 000069928-01 | Janet | Grey | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 02102017 | Denied | TRINITY HEALTH | Fax | SNF | Inpatient | 02102017 | 02112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170210008 | J441, Z5189 | Encounter for other specified aftercare | ICD10 | 02102017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 02092017 | 2017-02-09T13:32:14+00:00 |  | 000096874-01 | Linda | Kobmann | GENNANTONIO, MARGRETTA E | 924402 | MARGRETTA E | GENNANTONIO | 1295735884 | ARBORS AT MILFORD | 943319 | 1265830053 | ARBORS AT MILFORD | 1265830053 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARBORS AT MILFORD | 02102017 | Denied | MediGold Southwest OH Essential Care | Fax | SNF | Inpatient | 02102017 | 02112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170210009 | K5721 | Dvtrcli of lg int w perforation and abscess w bleeding | ICD10 | 02102017 |  |  |  | 0 | 0 |  | 0 |  |  | Reviewed Amisys chart--member has been IP twice and Observation once since 1/1/17., discharged home w/home health 2/11/17 | 02062017, 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 02092017 | 2017-02-09T14:32:25+00:00 |  | 000039863-01 | EVERETT | CAMAC | COLS INPATIENT CARE INC | 948518 | LUIZA | BALABANYAN | 1174866404 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 02102017 | Denied | MediGold Classic Preferred | Fax | SNF | Inpatient | 02102017 | 02112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170210024 | S76119D | Strain of unsp quadriceps muscle, fascia and tendon, subs | ICD10 | 02102017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017, 02272017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 02092017 | 2017-02-09T14:56:12+00:00 |  | 000039328-01 | MARGARET | WISE | INTL MED & GERIATRIC SRV | 907157 | AUDRIUS | RUKSENAS | 1447202106 | WESTMORELAND PLACE | 939350 | 1457335937 | WESTMORELAND PLACE | 1457335937 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WESTMORELAND PLACE | 02102017 | Denied | MediGold Classic Preferred | Fax | SNF | Inpatient | 02102017 | 02112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170210025 | R296, S82102D | Unsp fx upper end of l tibia, subs for clos fx w routn heal | ICD10 | 02102017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02062017, 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 02092017 | 2017-02-09T14:58:18+00:00 |  | 000023700-01 | CLARENCE | MCLAUGHLIN | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 02102017 | Denied | MediGold Classic Preferred | Fax | SNF | Inpatient | 02102017 | 02112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170210031 | J129 | Viral pneumonia, unspecified | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | DC info NOMNC MDS with RUG RVA10 received | 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017, 02272017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 02092017 | 2017-02-09T15:27:02+00:00 |  | 000082683-01 | Sandra | Ladd | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | HEARTLAND OF DUBLIN | 933794 | 1013332337 | HEARTLAND OF DUBLIN | 1013332337 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF DUBLIN | 02102017 | Denied | MediGold Essential Care | Fax | SNF | Inpatient | 02102017 | 02112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170210052 | S22000D | Wedge comprsn fx unsp thor vert, subs for fx w routn heal | ICD10 | 02102017 |  |  |  | 0 | 0 |  | 0 |  |  | FTA FILED., FTA form received, Received notification of appeal. Case reviewed by medical director Dr. Greg Wise. Member approved for Skilled Nursing Therapy through LCD of 2/26/2017. | 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 02092017 | 2017-02-09T15:56:00+00:00 |  | 000071192-01 | Dorothy | Davis | TO, NHA T | 916638 | NHA T | TO | 1700997558 | HEARTLAND OF SPRINGFIELD | 905915 | 1326083122 | HEARTLAND OF SPRINGFIELD OH LLC | 1326083122 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF SPRINGFIELD OH LLC | 02102017 | Denied | MediGold Essential Care | Fax | SNF | Inpatient | 02102017 | 02112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170210055 | M6281 | Muscle weakness (generalized) | ICD10 | 02102017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02072017, 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 02092017 | 2017-02-09T17:41:01+00:00 |  | 000086186-01 | Mildred | Keister | MERCY HEALTH PHYSICIANS | 935886 | AIJAZ | AHMED | 1306911961 | MERCY MCAULEY CENTER | 922577 | 1780641175 | MERCY MCAULEY CENTER | 1780641175 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY MCAULEY CENTER | 02102017 | Denied | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 02102017 | 02112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170210065 | I4891 | Unspecified atrial fibrillation | ICD10 | 02102017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017, 02272017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 02102017 | 2017-02-10T08:08:05+00:00 |  | 000070724-01 | Lynda | Lewin | HOSPICE OF CENTRAL OHIO | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 02102017 | Denied | MediGold Essential Care | Fax | SNF | Inpatient | 02102017 | 02112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170210072 | Z96642 | Presence of left artificial hip joint | ICD10 | 02172017 |  |  |  | 0 | 0 |  | 0 |  |  | DC info NOMNC and MDS with RUG of RUA10 | 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017, 02272017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
| 02102017 | 2017-02-10T10:55:38+00:00 |  | 000115866-01 | ROBERT | UMSTOTT | CNP OPERATING CO LLC | 913181 | JEROLD A | MEYER | 1821093881 | SIGNATURE HEALTHCARE OF COSHOCTON | 933752 | 1215343058 | SIGNATURE HEALTHCARE OF COSHOCTON | 1215343058 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF COSHOCTON | 02102017 | Denied | MediGold Southeast OH Essential Care | Fax | SNF | Inpatient | 02102017 | 02112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Interim Approval | A170210097 | N179 | Acute kidney failure, unspecified | ICD10 | 02102017 |  |  |  | 0 | 0 |  | 0 |  |  | member id# 115866  incorrect on admission notification | 02082017, 02092017, 02102017, 02112017, 02122017, 02132017, 02142017, 02152017, 02162017, 02172017, 02182017, 02192017, 02202017, 02212017, 02222017, 02232017, 02242017, 02252017, 02262017, 02272017 | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF, SNF | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 |
