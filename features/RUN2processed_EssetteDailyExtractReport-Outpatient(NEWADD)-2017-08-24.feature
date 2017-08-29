Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-24
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-24
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
| 08212017 | 2017-08-21T08:56:24+00:00 | Q19106734 | 000045979-01 | LEWIS | FENTON | OH ONCOLOGY & HEMATOLOGY | 913846 | JEANNA L | KNOBLE | 1548242118 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08242017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08222017 | 02182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170822075 | C9310 | Chronic myelomonocytic leukemia not achieve remission | ICD10 | 08242017 | J0881 | INJECTION, DARBEPOETIN ALFA, 1 MICROGRAM (NON-ESRD USE) | HCPCS | 3600 | 3600 | Approved | 181 | HCPCS | HC | J0881: 3600 Darbepoetin Alfa (Aranesp) 200-300 mcg  SQ  day 1  every 14 days  12 cycles |  |  |  |  | 0 |
| 08122017 | 2017-08-12T10:48:05+00:00 | Q19078458 | 000005570-01 | DELORES | SMITH | OH ONCOLOGY & HEMATOLOGY | 937300 | TARAL | PATEL | 1780632828 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08242017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08282017 | 02242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170815016 | C3412 | Malignant neoplasm of upper lobe, left bronchus or lung | ICD10 | 08242017 | J9264, J2469, J9045 | CARBOPLATIN, 50 MG | HCPCS | 3600, 60, 108 | 3600, 60, 108 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC | J9264: 3600 Albumin-bound Paclitaxel 100 mg/m2  IV  days 1  8  15  every 21 days  6 cycles; J9045: 108 Carboplatin AUC 6 (max 900 mg)   IV  day 1  every 21 days  6 cycles; J2469: 60 Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 08232017 | 2017-08-23T11:14:32+00:00 | Q19154052 | 000101901-01 | John | Hendershot | MARIETTA HLTH CARE PHYS | 908550 | ERIC A | GOULDER | 1598760969 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 08242017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08152017 | 10142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170824059 | I495 | Sick sinus syndrome | ICD10 | 08242017 | 33228, C1785, C2619 | PACEMAKER, DUAL CHAMBER, NON RATE-RESPONSIVE (IMPLANTABLE) | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 08182017 | 2017-08-18T14:29:21+00:00 | Q19129384 | 000115897-01 | Michael | Aldridge | MOUNT CARMEL HLTH PRVDRS | 929340 | MAZEN | AWAIS | 1477670834 | MOUNT CARMEL HLTH PRVDRS | 901263 | 1134154750 | MOUNT CARMEL HEALTH PROVIDERS INC II | 1134154750 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH PROVIDERS INC II | 08242017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08312017 | 09302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170822049 | I208 | Other forms of angina pectoris | ICD10 | 08242017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08042017 | 2017-08-04T12:27:51+00:00 |  | 000099335-01 | John | Skripac | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 |  | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | DME | DME | Pre-Service | PRE |  | CORNERSTONE MEDICAL SRVS COLS LLC | 08242017 | Denied | MediGold Essential Care | Member | Not a Covered Benefit (PA) | Outpatient | 08242017 | 08252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170804178 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 08242017 | E1392 | PORTABLE OXYGEN CONCENTRATOR, RENTAL | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Duplicate request reference X170804178, This is not a duplicate it was just uploaded twice, PC to member at 614-882-9099  verified DOB.  Asked if request could be extended so that info can be obtained from physicians. Member agrees. Member states that hose is a hazzard and afraid that he will trip on it. Adds that pulmonologist is Dr. Qadoom., PC to office of Qadoom  Mahmoud MD at 614-898-9340, Spoke to Kerry  requested clinical information support member request for 2nd Oxygen Concentrator for home. Provided fax number., LVMM for Dr. Segal office  614-383-6000  nurse Erica  requested clinical information to support member request for 2nd Oxygen Concentrator for home. Provided fax and phone number., VMM from Kelly at Dr. Segal office  614-383-6000  inquired what kind of clinical information is needed from them., LVMM for Dr. Segal office  614-383-6000  advised that any information either supporting or not supporting members need for a supplemental oxygen concentrator in the home., PC to Cornerstone rep Elena  614-866-5520  Ext 15200, Inquired about Medicare coverage for 2nd oxygen concentrator in the home.  My own research of Medicare covered Oxygen equipement did NOT show that it would be covered. She adds that it is not a covered benefit., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 08102017 | 2017-08-10T15:09:25+00:00 |  | 000086153-01 | Oneita | Steele | OSU SURGERY LLC | 914209 | SHERIF R | ABDEL-MISIH | 1255501250 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 08242017 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 08242017 | 08252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170810133 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 08242017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305 | SURGICAL PATH LARGE SPEC/MANY SMALL | CPT | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 | CPT | C4 | Researched in network availablity for surgical oncologist: None available specifically  however multiple options for surgeons who do colon surgeries and work with oncologist., Letter is written in appropriate language with no abbreviations and is therefore approved., VMM from David Hursh  419-560-2920. Advised that they are appealing denial., Per Voyager: David Hursh is ROI., PC back to David Hursh  he explained that they have a mtg with the doctor who did the colonoscopy on 9/6/17 to discuss denial and options.  They will likely appeal the decision., Provided appeal phone number., Mr. Hursh expressed frustration r/t denial. |  |  |  |  | 0 |
| 08232017 | 2017-08-23T13:22:37+00:00 | Q19148298 | 000111509-01 | David | Ferguson | GUERNSEY COUNTY GEN HLTH | 922005 | EDWARD | COLBY | 1518956473 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 08242017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 09212017 | 10212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170824105 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 08242017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08022017 | 2017-08-02T11:35:16+00:00 |  | 000090426-01 | Paul | Wohlheter | SIGNATURE HEALTHCARE OF COSHOCTON | 933752 |  | SIGNATURE HEALTHCARE OF COSHOCTON | 1215343058 | SIGNATURE HEALTHCARE OF COSHOCTON | 933752 | 1215343058 | SIGNATURE HEALTHCARE OF COSHOCTON | 1215343058 | Out of Network Services | OONS | Pre-Service | PRE |  | SIGNATURE HEALTHCARE OF COSHOCTON | 08242017 | Denied | MediGold Southeast OH Essential Care | Fax | Not a Covered Benefit (PA) | Outpatient | 08242017 | 08252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170802134 | G4700, I10, Z9181 | History of falling | ICD10 | 08242017 | 99307, 99308, 99309, 99310 | NURSING FAC CARE, SUBSEQ | CPT | 0, 0, 0, 0 | 1, 1, 1, 1 | , , ,  | 0, 0, 0, 0 | CPT | C4 | P/c to Nina S with signature healthercare left VM letting her know I need to know what she is requesting for the member.  If the member is in house do they need what service or with this be out patient service.  Left my contact number., Per Angela S. stated this was a Part B  clarification that the mbr is just LTC. Denial rec. based on hospice being in place. |  |  |  |  | 0 |
| 07252017 | 2017-07-25T12:26:38+00:00 |  | 000109944-01 | Billie E | Stanley | RETINA CONSULTANTS | 930043 | SCOTT C | JAMERSON | 1710180534 | RETINA CONSULTANTS | 924208 | 1902800758 | RETINA CONSULTANTS | 1902800758 | Out of Network Services | OONS | Pre-Service | PRE |  | RETINA CONSULTANTS | 08242017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 08022017 | 09022017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170725164 | H3531 | Nonexudative age-related macular degeneration | ICD10 | 08242017 | 92012, 92014, 92134, 67210 | TRT LOCALZD LSN RETINA W PHOTOCOAG | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 32, 32, 32, 32 | CPT | C4 | Essette fax did not fax Authorization and approval manually right faxed to Debbie/SCOTT C JAMERSON MD FACS  RETINA CONSULTANTS PLLC, Problems with Fax Called office phone # 304-346-4400  spoke receptionist confirmed fax #  She will have machine checked, Essette fax did not fax Authorization and approval manually right faxed to Debbie/SCOTT C JAMERSON MD FACS  RETINA CONSULTANTS PLLC, Due to Request to add Micropulse Laser New Approval letter was sent |  |  |  |  | 0 |
| 08222017 | 2017-08-22T15:27:13+00:00 | Q19134129 | 000116408-01 | Carl | Willmon III | MOUNT CARMEL HLTH PRVDRS | 945205 | DANAMARIE E | AMINIAN | 1407007818 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 08242017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08222017 | 09212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170824077 | M545 | Low back pain | ICD10 | 08242017 | 72131 | CAT SCAN LUMBAR SPINE WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08232017 | 2017-08-23T08:56:17+00:00 | Q19153882 | 000080898-01 | Betty | Rode | MARIETTA MEM HSP | 948282 | MOTAZ | MOUSSA | 1306178256 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 08242017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08162017 | 10152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170824057 | R9439 | Abnormal result of other cardiovascular function study | ICD10 | 08242017 | 93454 | CORONARY ARTERY ANGIO S&I | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 08182017 | 2017-08-18T14:00:30+00:00 | Q19107207 | 000021797-01 | JANET | WHITE | COVENANT PHYS SERV LTD | 902704 | JAMES W | KAEHR | 1184659708 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MADISON COUNTY HOSPITAL | 08242017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08182017 | 09172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170822076 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 08242017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08172017 | 2017-08-17T11:14:46+00:00 | Q19115283 | 000073049-01 | Connie | Carter | OH ONCOLOGY & HEMATOLOGY | 937300 | TARAL | PATEL | 1780632828 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08242017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08232017 | 02192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170818019 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 08242017 | J9201, J8540, J1626 | INJECTION, GRANISETRON HYDROCHLORIDE, 100 MCG | HCPCS | 208, 2560, 320 | 208, 2560, 320 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC | J9201: 208 Gemcitabine 1250 mg/m2  IV  days 1  8  every 21 days  8 cycles; J8540: 2560 Dexamethasone up to 20 mg  PO  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  8 cycle(s); J1626: 320 Granisetron up to 1 mg  IV  up to 4 days  Dispensed as: 1.00 mg  4 treatment(s) each cycle  8 cycle(s) |  |  |  |  | 0 |
| 08232017 | 2017-08-23T13:17:30+00:00 | Q19143951 | 000044354-01 | BILLY | REECE | MOUNT CARMEL HLTH PRVDRS | 937287 | DONNA M | PARSLEY | 1437192952 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 08242017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08222017 | 09212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170824114 | Z77090 | Contact with and (suspected) exposure to asbestos | ICD10 | 08242017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
