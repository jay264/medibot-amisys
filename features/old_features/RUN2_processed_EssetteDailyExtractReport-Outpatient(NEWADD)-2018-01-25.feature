Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-25
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-25
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
| 01182018 | 2018-01-18T11:19:00+00:00 | Q20201070 | 000048159-01 | John | Wilkes | SCIOTO VALLEY UROLOGY IN | 936922 | GEORGE T | HO | 1255390852 | SCIOTO VALLEY UROLOGY IN | 938633 | 1346254976 | SCIOTO VALLEY UROLOGY INC | 1346254976 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | SCIOTO VALLEY UROLOGY INC | 01252018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01182018 | 07172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180125017 | C61 | Malignant neoplasm of prostate | ICD10 | 01252018 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6: Oncology - Prostate: Leuprolide 45 mg  IM  day 1  every 6 months  1 cycle |  |  |  |  | 0 |
| 01192018 | 2018-01-19T10:14:00+00:00 | Q20211035 | 000044997-01 | JOHN | MILLER | CEN OH UROLOGY GRP INC | 937031 | GREGORY S | KNUDSON | 1033284286 | CEN OH UROLOGY GRP INC | 937031 | 1396780466 | GREGORY S KNUDSON | 1033284286 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE | GREGORY S | KNUDSON | 01252018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01192018 | 07182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180125023 | C61 | Malignant neoplasm of prostate | ICD10 | 01252018 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6: Oncology - Prostate: Leuprolide 45 mg  IM  day 1  every 6 months  1 cycle |  |  |  |  | 0 |
| 01232018 | 2018-01-23T15:49:00+00:00 | Q20235930 | 000013983-01 | KATHLEEN | ARTHUR | CEN OH PRIMARY CARE SPEC | 935835 | TERRANCE A | CASTOR | 1285610857 | COPC CENTRAL OHIO PRIMAR | 952425 | 1194705194 | JIGISHA L PATEL | 1326339870 | Radiology (HH) | OP RAD | Pre-Service | PRE | JIGISHA L | PATEL | 01252018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01232018 | 02222018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180125060 | J3801 | Paralysis of vocal cords and larynx, unilateral | ICD10 | 01252018 | 70450, 70491, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01242018 | 2018-01-24T17:35:10+00:00 |  | 000120605-01 | James | Lerch | OSU INTERNAL MED LLC | 907827 | SEYED-AMIR | MORTAZAVI | 1124036181 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01252018 | Approved | Flexible Choice PPO | Fax | Services Not Available In-Network | Outpatient | 02012018 | 05012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180125010 | C678 | Malignant neoplasm of overlapping sites of bladder | ICD10 | 01252018 | 99211, 99212, 99213, 99214, 99215, 85025, 82947, 84443, 84481, 84439 | THYROXINE FREE RIA (UNBOUND T-4) | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90, 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
| 01252018 | 2018-01-25T08:49:16+00:00 |  | 000076920-01 | John | Raytis | OH GASTRO GRP INC | 918776 | PRIYA M | ROY | 1043492895 | CENTRAL OH ENDOSCOPY CENTER | 939381 | 1336218825 | CENTRAL OH ENDOSCOPY CENTER | 1336218825 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | CENTRAL OH ENDOSCOPY CENTER | 01252018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 02012018 | 03012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180125042 | Z86010 | Personal history of colonic polyps | ICD10 | 01252018 | 45378, 45380, 45384, 45385 | COLONOSCOPY PAST SP FLEX RMVL LES. | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 29, 29, 29, 29 | CPT | C4 |  |  |  |  |  | 0 |
| 01242018 | 2018-01-24T07:52:25+00:00 | Q20237678 | 000114460-01 | Ruth | Chenoweth | FAIRFIELD HLTHCARE PROFS | 927434 | ALAEDDIN | AYYAD | 1548434046 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 01252018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01312018 | 03022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180125076 | R079 | Chest pain, unspecified | ICD10 | 01252018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01242018 | 2018-01-24T08:11:22+00:00 | Q20237895 | 000034200-01 | SHIRLEY | KUSAN | CEN OH NEURO SURGEONS IN | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 01252018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01242018 | 02232018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180125078 | M48062 | M48062 | ICD10 | 01252018 | 72132 | CAT SCAN LUMBAR SPINE C CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01242018 | 2018-01-24T09:00:41+00:00 | Q20238811 | 000088156-01 | Helen | Haskins | TO, NHA T | 916638 | NHA T | TO | 1700997558 | MOIN A RANGINWALA MD INC | 902205 | 1073635587 | MOIN A RANGINWALA | 1134166317 | Radiology (HH) | OP RAD | Pre-Service | PRE | MOIN A | RANGINWALA | 01252018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01242018 | 02232018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180125087 | S12100D | Unsp disp fx of 2nd cervcal vert, subs for fx w routn heal | ICD10 | 01252018 | 72127 | CAT SCAN CERVICL SPINE W/WO CNTRST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01252018 | 2018-01-25T11:22:04+00:00 |  | 000040515-01 | ERNEST | YOUNG | 41 GULF COAST KIDNEY ASS | 939792 | JANIS S | LAWRENCE-JACKS | 1063640126 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 01252018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01252018 | 04252018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180125127 | N186 | End stage renal disease | ICD10 | 01252018 | 90937, 90999, 90960, 90961, 90962, 90970 | ESRD HOME PT SERV P DAY, 20+ | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
