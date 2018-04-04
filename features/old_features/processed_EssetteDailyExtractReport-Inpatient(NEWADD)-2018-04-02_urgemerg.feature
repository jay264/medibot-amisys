Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-02_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-02_URGEMERG
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
	And in the "Certification" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Hospital Svcs"
	And the test pauses for "3" seconds
	And in the "hospital_services" page I should see the "est_admit" image
	And the test pauses for "3" seconds
	And in the "hospital_services" page I enter "<auth_admission_date>" into the "est_admit" image
	And the test pauses for "3" seconds

	And in the "hospital_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "auth_days" image

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
	And in the "hospital_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex_new" image
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
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_approved" image
	And the test pauses for "2" seconds

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_authorized" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_requested" image
	And the test pauses for "2" seconds

	#And I use the sub class "<sub_class>" to determine what location to enter into the location image
	And in the "authorized_services" page I enter "21" into the "location" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "AD" into the "count" image

	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds

	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds

	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Remarks"
	And in the "remarks_maintenance" page I should see the "remarks_maintenance" image
	And the test pauses for "3" seconds
	And I press "Control + N"
	And the test pauses for "4" seconds
	And in the "remarks_maintenance" page I enter "UM" into the "sub_type" image
	And in the "remarks_maintenance" page I enter "Authorization Numbers" into the "remark_summary" image
	And the test pauses for "3" seconds
	And in the "remarks_maintenance" page I enter "<auth_number>" into the "remark_text_1" image
	And the test pauses for "2" seconds
	And I press "Tab"
	And I enter the "<other_reference_#>" text
	And in the "remarks_maintenance" page I click on the "save" image
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

	Examples:
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
| 03172018 | 2018-03-17T10:03:43+00:00 |  | 000002963-01 | DONNA | ALLOWAY | MOUNT CARMEL HLTH SYS | 906079 | KEVIN M | RADECKI | 1194724260 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03282018 | 04012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319006 | C3431 | Malignant neoplasm of lower lobe, right bronchus or lung | ICD10 | 04022018 | 03282018 | 04012018 | 32663, 31622 | BRONCHOSCOPY-DIAG-W-W/O CELL WS/BRS | CPT | 1, 1 | 1, 1 | Approved, Approved | 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 02222018 | 2018-02-22T06:55:18+00:00 |  | 000114019-01 | Cheryl | Hunter | ORTHOPEDIC ONE INC | 936019 | DEREK L | SNOOK | 1508859752 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04022018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 03292018 | 03312018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222006 | M5416, M48062 | M48062 | ICD10 | 04022018 | 03292018 | 03312018 | 22612, 22614, 22842, 63047, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 3, 3, 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 03132018 | 2018-03-13T09:58:21+00:00 |  | 000085128-01 | Ellen | De Walt | ORTHOPEDIC ONE INC | 934921 | DENNIS J | TAYLOR | 1265425367 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04022018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03282018 | 03302018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313047 | M170 | Bilateral primary osteoarthritis of knee | ICD10 | 04022018 | 03282018 | 03302018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 03192018 | 2018-03-19T12:11:26+00:00 |  | 000112933-01 | John | Ragland | PROVIDER, UNKNOWN | 999999999 | UNKNOWN | PROVIDER | 0 | TIFT REGIONAL MEDICAL CE | 949468 | 1962462226 | TIFT REGIONAL MEDICAL CENTER | 1962462226 | Inpatient | IP | Concurrent Review | CONC |  | TIFT REGIONAL MEDICAL CENTER | 04022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03182018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319089 | R109 | Unspecified abdominal pain | ICD10 | 04022018 | 03182018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 03252018 | 2018-03-25T14:20:40+00:00 |  | 000103471-01 | Phillip | Kinnisten | HOSPITALIST MEDICINE PHY | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04022018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03242018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326045 | J181 | Lobar pneumonia, unspecified organism | ICD10 | 04022018 | 03242018 | 03312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03262018 | 2018-03-26T10:03:27+00:00 |  | 000107787-01 | Opal | Wacker | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04022018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 03242018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326094 | J189 | Pneumonia, unspecified organism | ICD10 | 04022018 | 03242018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03282018 | 2018-03-28T10:40:18+00:00 |  | 000044525-01 | WILLIAM | GILLETTE | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03262018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328040 | I509, N179, R4182 | Altered mental status, unspecified | ICD10 | 04022018 | 03262018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03282018 | 2018-03-28T12:55:42+00:00 |  | 000002989-01 | JUANITA | NOEL | HOSPITALIST MEDICINE PHY | 914484 | KANAN AKHIL | PATEL | 1205096195 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03272018 | 04012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329032 | I509 | Heart failure, unspecified | ICD10 | 04022018 | 03272018 | 04012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03052018 | 2018-03-05T15:31:47+00:00 |  | 000106609-01 | Lonnie | Hall | ALLIANCE PHYSICIANS INC | 932718 | JOSEPHINE | RANDAZZO | 1659315216 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 04022018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 03022018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306036 | I440, R001 | Bradycardia, unspecified | ICD10 | 04022018 | 03022018 | 03062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03142018 | 2018-03-14T11:01:31+00:00 |  | 000116777-01 | Ann | Stone | STEPHEN D HEISE MD & ASS | 924362 | NICHOLAS A | GODBY | 1174775464 | JEWISH HOSPITAL LLC | 949378 | 1609251891 | JEWISH HOSPITAL LLC | 1609251891 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | JEWISH HOSPITAL LLC | 04022018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03162018 | 03312018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314028 | T849XXA | Unsp comp of internal orthopedic prosth dev/grft, init | ICD10 | 04022018 | 03162018 | 03312018 | 22551, 22552 | ADDL NECK SPINE FUSION | CPT | 1, 1 | 1, 1 | Approved, Approved | 16, 16 | CPT | C4 |  |  |  | 11.0 |
| 03232018 | 2018-03-23T15:07:29+00:00 |  | 000061087-01 | CHARLOTTE | HARTZELL | COPC CENTRAL OHIO PRIMAR | 928116 | ONMA A | AMEH | 1578884565 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03222018 | 03252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326006 | N10 | Acute tubulo-interstitial nephritis | ICD10 | 04022018 | 03222018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03262018 | 2018-03-26T07:46:16+00:00 |  | 000087252-01 | Sara | Dunnigan | HOSPITALIST MEDICINE PHY | 928183 | VENU M | CHIPPA | 1417390923 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 04022018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 03242018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326057 | I5043, K625 | Hemorrhage of anus and rectum | ICD10 | 04022018 | 03242018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03272018 | 2018-03-27T11:24:50+00:00 |  | 000044632-01 | CAROLE | VANHOOSE | V GEORGE ZOCHOWSKI DO IN | 938553 |  | V GEORGE ZOCHOWSKI DO INC | 1003912403 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03262018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327090 | D649, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 04022018 | 03262018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03282018 | 2018-03-28T09:56:06+00:00 |  | 000082404-01 | Robert | Batina | FAIRFIELD HLTHCARE PROFS | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03272018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328056 | K859, R110 | Nausea | ICD10 | 04022018 | 03272018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03282018 | 2018-03-28T07:22:04+00:00 |  | 000092544-01 | Roland | Wildman Jr | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04022018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03282018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328088 | E876, N179, N200 | Calculus of kidney | ICD10 | 04022018 | 03282018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03282018 | 2018-03-28T11:27:56+00:00 |  | 000017566-01 | RITA | MILLER | SOUND INPATIENT PHYS OF | 932745 | SERAG E | ABDULAZIZ | 1164718409 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03272018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329013 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 04022018 | 03272018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03292018 | 2018-03-29T12:56:46+00:00 |  | 000002762-01 | LAVERNE | WARNER | HOSPITAL MEDICINE SERVIC | 907150 | RAORAJESHWAR | SINGH | 1518158203 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04022018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 03282018 | 03302018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329081 | I509, J9620 | Acute and chr resp failure, unsp w hypoxia or hypercapnia | ICD10 | 04022018 | 03282018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03142018 | 2018-03-14T16:28:11+00:00 |  | 000080712-01 | Betty | Smith | APOGEE MED GRP OHIO INC | 923380 | W TRAVIS | LAWSON JR | 1134114044 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04022018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03142018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314077 | R6521 | Severe sepsis with septic shock | ICD10 | 04022018 | 03142018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 03162018 | 2018-03-16T09:21:57+00:00 |  | 000088094-01 | Barbara | Hill | PREMIER HEALTH SPEC INC | 905256 | TRAVIS L | PERRY | 1992748057 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 04022018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 03152018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180319162288.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316005 | T24021A | Burn of unspecified degree of right knee, initial encounter | ICD10 | 04022018 | 03152018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 03152018 | 2018-03-15T18:06:32+00:00 |  | 000097880-01 | Cynthia | Greene | OH HSP FOR PSYCHIATRY | 933409 | KUNAL B | TANK | 1437479235 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 04022018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03152018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316015 | F29 | Unsp psychosis not due to a substance or known physiol cond | ICD10 | 04022018 | 03152018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03222018 | 2018-03-22T10:39:15+00:00 |  | 000069560-01 | CHARLES | SARGENT | CEN OH UROLOGY GRP INC | 937296 | RASHMI I | PATEL | 1295775930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04022018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03272018 | 03292018 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322032 | C61 | Malignant neoplasm of prostate | ICD10 | 04022018 | 03272018 | 03292018 | 55866, 38571 | LAPAROSCOPY, LYMPHADENECTOMY | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 03262018 | 2018-03-26T07:29:39+00:00 |  | 000095325-01 | Paul | Osborne Jr | CLERMONT INTERNISTS ASSO | 921351 | PARAMESWARAN | HARIHARAN | 1720084460 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 04022018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03232018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326060 | D649, R791 | Abnormal coagulation profile | ICD10 | 04022018 | 03232018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03292018 | 2018-03-29T09:03:27+00:00 |  | 000071245-01 | Mildred | Jewell | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03272018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329008 | J209 | Acute bronchitis, unspecified | ICD10 | 04022018 | 03272018 | 03312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03292018 | 2018-03-29T10:48:38+00:00 |  | 000084461-01 | Joann | Davis | GENESIS MEDICAL GRP LLC | 915319 | AMMAR | SAFAR | 1558334581 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03282018 | 04012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329071 | D62, T148XXA | T148XXA | ICD10 | 04022018 | 03282018 | 04012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03302018 | 2018-03-30T16:30:46+00:00 |  | 000044529-01 | YVETTE | SADAUSKAS | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04022018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03292018 | 04012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402014 | R410 | Disorientation, unspecified | ICD10 | 04022018 | 03292018 | 04012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
