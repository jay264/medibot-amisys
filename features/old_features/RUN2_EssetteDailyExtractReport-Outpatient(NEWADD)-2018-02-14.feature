Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-14
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-14
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
| 02122018 | 2018-02-12T14:40:05+00:00 | Q20385714 | 000075464-01 | Donna | Hughes | CAPITAL UROLOGY INC | 918364 | FADEL S | ELKHAIRI | 1841456654 | CEN OH UROLOGY GRP INC | 946058 | 1396780466 | MICHELLE BENNETT | 1144292012 | Radiology (HH) | OP RAD | Pre-Service | PRE | MICHELLE | BENNETT | 02142018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02122018 | 03142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180214027 | N200 | Calculus of kidney | ICD10 | 02142018 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02122018 | 2018-02-12T15:04:43+00:00 | Q20386187 | 000084609-01 | Harold | Crabtree | ALLIANCE PHYSICIANS INC | 910052 | SYED A | NAJEED | 1972560662 | ALLIANCE PHYSICIANS INC | 910052 | 1437125572 | SYED A NAJEED | 1972560662 | Radiology (HH) | OP RAD | Pre-Service | PRE | SYED A | NAJEED | 02142018 | Approved | MediGold Medical Only | HealthHelp | Medical Criteria Met | Outpatient | 02132018 | 03152018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180214033 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 02142018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02082018 | 2018-02-08T16:32:50+00:00 | Q20366922 | 000102847-01 | Warren | Tomlin Jr | FAIRFIELD HLTHCARE PROFS | 919094 | ROOPA S | SRIKANTIAH-SAH | 1396856191 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 02142018 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02082018 | 08072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180214011 | C187 | Malignant neoplasm of sigmoid colon | ICD10 | 02142018 | J9055, J2469, J1100, J9206, J0640, J9190 | FLUOROURACIL, 500 MG | HCPCS | 600, 360, 960, 240, 216, 120 | 600, 360, 960, 240, 216, 120 | Approved, Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181, 181 | HCPCS | HC | J9055: 600: INJECTION  CETUXIMAB  10 MG  Dispensed as: 500.00 mg  1 treatment(s) each cycle  12 cycle(s): J9206: 240: INJECTION  IRINOTECAN  20 MG  Dispensed as: 400.00 mg  1 treatment(s) each cycle  12 cycle(s): J0640: 216: INJECTION  LEUCOVORIN CALCIUM  PER 50 MG  Dispensed as: 900.00 mg  1 treatment(s) each cycle  12 cycle(s): J9190: 120: INJECTION  FLUOROURACIL  500 MG  Dispensed as: 5000.00 mg  1 treatment(s) each cycle  12 cycle(s): J2469: 360: Palonosetron 0.25 mg  IV  up to 3 days  Dispensed as: 0.25 mg  3 treatment(s) each cycle  12 cycle(s): J1100: 960: Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  12 cycle(s) |  |  |  |  | 0 |
| 02132018 | 2018-02-13T08:17:28+00:00 | Q20388932 | 000057879-01 | HOWARD | LEWINTER | MOUNT CARMEL HLTH PRVDRS | 914408 | KAMEL N | ADDO | 1700864626 | ZOLL LIFECOR CORPORATION | 907205 | 1164535274 | ZOLL LIFECOR CORPORATION | 1164535274 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ZOLL LIFECOR CORPORATION | 02142018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02182018 | 04192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180214051 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 02142018 | 93745, K0606, K0607, K0608, K0609 | REPLACEMENT ELECTRODES FOR USE WITH AUTOMATED EXTERNAL DEFIBRILLATOR, GA | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 02132018 | 2018-02-13T11:08:53+00:00 | Q20392514 | 000071770-01 | Timothy | Mckelvey | CEN OH PRIMARY CARE SPEC | 936921 | MARIETTA A | HOFMEISTER | 1639152317 | COPC CENTRAL OHIO PRIMAR | 948084 | 1194705194 | SVETLANA NOVAK | 1598008179 | Cardiology (HH) | OP CARD | Pre-Service | PRE | SVETLANA | NOVAK | 02142018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02132018 | 03152018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180214073 | Z87891 | Personal history of nicotine dependence | ICD10 | 02142018 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 02132018 | 2018-02-13T12:51:01+00:00 | Q20394407 | 000111660-01 | John | Thompson | MEM HSP OF UNION COUNTY | 934897 | R MARK | STOVER | 1487656203 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MEMORIAL HOSPITAL OF UNION COUNTY | 02142018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02132018 | 03152018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180214082 | S6981XA | Oth injuries of right wrist, hand and finger(s), init encntr | ICD10 | 02142018 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02132018 | 2018-02-13T12:10:40+00:00 | Q20394471 | 000079391-01 | Tyrone | Walker | OH ONCOLOGY & HEMATOLOGY | 934772 | MARK | SEGAL | 1093715385 | OH ONCOLOGY & HEMATOLOGY | 951012 | 1467717553 | LAVERNE G MENSAH | 1891788709 | Radiology (HH) | OP RAD | Pre-Service | PRE | LAVERNE G | MENSAH | 02142018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02142018 | 03162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180214083 | C3432 | Malignant neoplasm of lower lobe, left bronchus or lung | ICD10 | 02142018 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02132018 | 2018-02-13T13:23:02+00:00 | Q20395033 | 000088689-01 | Karen | Little | ORTHO INSTITUTE OF DAYTO | 926353 | ERICKA L | DAVIS | 1467781310 | ORTHO INSTITUTE OF DAYTO | 919397 | 1538192331 | KEVAN M CURRAN | 1245277896 | Radiology (HH) | OP RAD | Pre-Service | PRE | KEVAN M | CURRAN | 02142018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02142018 | 03162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180214088 | M25562 | Pain in left knee | ICD10 | 02142018 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02142018 | 2018-02-14T09:49:19+00:00 | Q20393336 | 000095303-01 | James | Neff | ADENA MEDICAL GROUP LLC | 925366 | JEYANTHI | RAMANARAYANAN | 1538269394 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 02142018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02132018 | 08122018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180214098 | C61 | Malignant neoplasm of prostate | ICD10 | 02142018 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 2 | 2 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
