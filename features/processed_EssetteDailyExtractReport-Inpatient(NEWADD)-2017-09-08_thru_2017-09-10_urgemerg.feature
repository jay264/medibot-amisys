Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-08_thru_2017-09-10_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-08_thru_2017-09-10_URGEMERG
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
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
| 09052017 | 2017-09-05T09:31:50+00:00 | 250008237246 | 000027695-01 | EDITH | ADKINS | GREG A WISE MD INC | 909948 |  | GREG A WISE MD INC | 1801018924 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09032017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905005 | I509, J189, R0602 | Shortness of breath | ICD10 | 09082017 | 09032017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08302017 | 2017-08-30T10:05:45+00:00 | 267966647241 | 000106523-01 | June | Morey | MOUNT CARMEL HLTH SYS | 941835 | SHAVON | FRANKHOUSER | 1629395512 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09082017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08292017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830024 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 09082017 | 08292017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 09052017 | 2017-09-05T14:33:42+00:00 | 263216927244 | 000029484-01 | DENZIL | COLLIER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09012017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905082 | R079 | Chest pain, unspecified | ICD10 | 09082017 | 09012017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09072017 | 2017-09-07T16:09:52+00:00 |  | 000103610-01 | David | Turner | CEN OH UROLOGY GRP INC | 913736 | JASON | JANKOWSKI | 1053512822 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Pre-Service | PRE |  | RIVERSIDE METHODIST HOSPITAL | 09082017 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Inpatient | 09082017 | 09092017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170908001 | N131 | Hydronephrosis w ureteral stricture, NEC | ICD10 | 09082017 |  |  | 50230 | NPHRECTMY RAD W RGNL LYPHADENCTMY | CPT | 0 | 1 | Denied | 0 | CPT | C4 |  |  | No child records to display. |  |
| 09052017 | 2017-09-05T10:11:49+00:00 |  | 000017997-01 | LARRY | WALSH | OSU INTERNAL MED LLC | 932883 | CRYSTAL M | KELLY | 1679899066 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 09082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09022017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906054 | R52 | Pain, unspecified | ICD10 | 09082017 | 09022017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09052017 | 2017-09-05T16:18:19+00:00 |  | 000105300-01 | Sarah | Stacy | MIAMI VALLEY HSPISTS GRP | 925015 | TITILAYO A | OLUWABUSI | 1912293077 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09012017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907039 | R000, R509 | Fever, unspecified | ICD10 | 09082017 | 09012017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09042017 | 2017-09-04T05:30:39+00:00 |  | 000030169-01 | RUTH | PORTER | HOSP SVC MED GRP OF MARY | 905119 | NAWAR | SAIEG | 1750400867 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 09082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09012017 | 09052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905080 | K5792 | Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 09082017 | 09012017 | 09052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08282017 | 2017-08-28T08:57:33+00:00 |  | 000089905-01 | Ethel | Ely | DAVID ZAPF DO INC | 902206 | DAVID M | ZAPF | 1518948611 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 09082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08272017 | 09052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828047 | N390 | Urinary tract infection, site not specified | ICD10 | 09082017 | 08272017 | 09052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 08312017 | 2017-08-31T12:15:40+00:00 | 016760123-7215 | 000075474-01 | Betty | Vollmar | JOINT IMPLANT SURGEONS | 910893 | JASON M | HURST | 1760667810 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09062017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831053 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 09082017 | 09062017 | 09072017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08162017 | 2017-08-16T09:33:33+00:00 | 264322027227 | 000034483-01 | JOE | PERNELL | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08152017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816014 | D500 | Iron deficiency anemia secondary to blood loss (chronic) | ICD10 | 09082017 | 08152017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 24.0 |
| 08312017 | 2017-08-31T18:03:58+00:00 |  | 000014015-01 | BRIAN | HEMBREE | NORTH CENTRAL OHIO HEALT | 905685 | RASHID | PERVEZ | 1528144177 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 09082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08312017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901022 | F250 | Schizoaffective disorder, bipolar type | ICD10 | 09082017 | 08312017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 09012017 | 2017-09-01T07:05:17+00:00 |  | 000082331-01 | Robert | Kattine | OHIOHEALTH PHYS GRP | 909061 | RAJALAKSHMI | ESAKKY | 1942340849 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 09082017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 08312017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901026 | C169, R0602 | Shortness of breath | ICD10 | 09082017 | 08312017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08142017 | 2017-08-14T08:12:35+00:00 |  | 000102423-01 | Paula | Moeller | SOUND KENWOOD HSPISTS OF | 924227 | BRIAN | WEBSTER | 1366567372 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 09102017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 09102017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814087 | N3000 | Acute cystitis without hematuria | ICD10 | 09102017 | 08132017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09052017 | 2017-09-05T14:44:19+00:00 |  | 000111446-01 | Gary | Plueckhahn | APOGEE MED GRP OHIO INC | 947769 | OLANREWAJU | ISHOLA | 1639500606 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09032017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906096 | R0602 | Shortness of breath | ICD10 | 09082017 | 09032017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09052017 | 2017-09-05T13:41:32+00:00 |  | 000091000-01 | Edwin | Ferguson | INTERNAL MED CARE INC | 904867 | TROY A | TYNER | 1003814526 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 09082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09032017 | 09052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906090 | I509, J918 | Pleural effusion in other conditions classified elsewhere | ICD10 | 09082017 | 09032017 | 09052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09052017 | 2017-09-05T09:31:53+00:00 |  | 000089222-01 | Daniel | Kaiser | SOUND PHYSICIANS OF OHI0 | 948134 | DONNA R | ADAMS | 1154381994 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 09082017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 09032017 | 09042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906047 | I200, R079 | Chest pain, unspecified | ICD10 | 09082017 | 09032017 | 09052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08312017 | 2017-08-31T08:36:27+00:00 |  | 000067111-01 | LESTER | HULSE | LICKING MEM HLTH PROF | 947795 | MARUF A | ALI | 1104258979 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 09082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08302017 | 09052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831036 | I5031, J9600, N184 | Chronic kidney disease, stage 4 (severe) | ICD10 | 09082017 | 08302017 | 09052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09052017 | 2017-09-05T10:57:37+00:00 |  | 000090909-01 | Betty | Pfuhl | HOSPITALIST ASSOC LLC | 907558 | GEOFFREY M | POLEN | 1942268107 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09082017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09032017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906065 | M79602 | Pain in left arm | ICD10 | 09082017 | 09032017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09082017 | 2017-09-08T08:36:31+00:00 |  | 000060201-01 | VERNIE | SHOCKLEY | SOUND PHYSICIANS OF OHI0 | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09032017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908002 | R55 | Syncope and collapse | ICD10 | 09082017 | 09032017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09072017 | 2017-09-07T09:13:39+00:00 | 251643187249 | 000015298-01 | DONN | EUWER | SOUND PHYSICIANS OF OHI0 | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09062017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907007 | I639 | Cerebral infarction, unspecified | ICD10 | 09082017 | 09062017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08172017 | 2017-08-17T15:25:15+00:00 | 026036726-7229 | 000117756-01 | Susan | Mohler | ORTHO & NEURO CONSULTS I | 936690 | MARK E | GITTINS | 1598749699 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09072017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818003 | M1712, M25562 | Pain in left knee | ICD10 | 09082017 | 09072017 | 09082017 | 27487 | SECONDARY RECONSTRUCT/REV TOT KNEE | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08292017 | 2017-08-29T13:46:14+00:00 |  | 000091408-01 | Diana | Stamler | SOUND PHYSICIANS OF OHI0 | 948370 | SAIYID-NAUFAL | T ZAIDI | 1790122307 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 09082017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08282017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829071 | G459, I10, R4701 | Aphasia | ICD10 | 09082017 | 08282017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09052017 | 2017-09-05T11:22:19+00:00 | 252361647247 | 000091510-01 | James | Siniff | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09042017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905051 | N492, N493 | Fournier gangrene | ICD10 | 09082017 | 09042017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09052017 | 2017-09-05T14:46:40+00:00 |  | 000035200-01 | GEORGE | MENDENHALL | APOGEE MED GRP OHIO INC | 948097 | ROBIN A | THOMAS | 1912955808 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09042017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906099 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 09082017 | 09042017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09012017 | 2017-09-01T09:10:21+00:00 | 250297197243 | 000052185-01 | NORMAN | DUNN | COPC CENTRAL OHIO PRIMAR | 905860 | RICHARD A | FIKES | 1235176686 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08312017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901010 | E1310, I639 | Cerebral infarction, unspecified | ICD10 | 09082017 | 08312017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 09072017 | 2017-09-07T09:56:41+00:00 | 252971677249 | 000049904-01 | MARILYN | THOMAS | COLS INPATIENT CARE INC | 927568 | KARTHIK S | MULKANOOR | 1720390859 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09082017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 09062017 | 09082017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907021 | R0602 | Shortness of breath | ICD10 | 09082017 | 09062017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07172017 | 2017-07-17T13:53:23+00:00 |  | 000090569-01 | PHYLLIS | PADGETT | MERCY HEALTH PHYSICIANS | 920797 | CHRISTOPHER | JUERGENS | 1225026412 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 09082017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08302017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717092 | D126 | Benign neoplasm of colon, unspecified | ICD10 | 09082017 | 08302017 | 09022017 | 44205 | LAP COLECTOMY PART W/ILEUM | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 3.0 |
| 08312017 | 2017-08-31T11:43:17+00:00 | 251004017243 | 000027838-01 | DON | SCHAEFER | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09052017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831051 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 09082017 | 09052017 | 09082017 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 09052017 | 2017-09-05T07:44:57+00:00 |  | 000046178-01 | RUSSELL | ANGLEMYER | MIAMI VALLEY HSPISTS GRP | 914654 | ELIE R | GHAZAL | 1982657391 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09032017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905100 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 09082017 | 09032017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09042017 | 2017-09-04T11:19:15+00:00 |  | 000073453-01 | Kenneth | Hill | MANA MEDICAL, INC. | 928193 | BINIT J | SHAH | 1912181389 | OH HSP FOR PSYCHIATRY | 906239 | 1821186271 | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | OHIO HOSPITAL FOR PSYCHIATRY | 09082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09042017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905093 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 09082017 | 09042017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09052017 | 2017-09-05T10:59:57+00:00 |  | 000084044-01 | William | McHargue | TRAUMA INC | 911344 | STEVEN A | SANTANELLO | 1316936263 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08312017 | 09042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907068 | S72112A | Disp fx of greater trochanter of left femur, init | ICD10 | 09082017 | 08312017 | 09042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08282017 | 2017-08-28T13:20:55+00:00 |  | 000092665-01 | John | Bixler | APOGEE MED GRP OHIO INC | 947342 | RAZVAN I | DUCU | 1093017790 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08262017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829022 | L89893 | Pressure ulcer of other site, stage 3 | ICD10 | 09082017 | 08262017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08112017 | 2017-08-11T08:52:48+00:00 |  | 000119030-01 | Janet | Craw | MERCY HEALTH PHYSICIANS | 920971 | SURESH | NAYAK | 1730184946 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 09082017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 08292017 | 09052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811002 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 09082017 | 08292017 | 09062017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  |  | 8.0 |
| 08172017 | 2017-08-17T14:06:49+00:00 | 025831317-7227 | 000055826-01 | SAUNDRA | ASHBROOK | ORTHO & NEURO CONSULTS I | 936690 | MARK E | GITTINS | 1598749699 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09052017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818005 | M1611, M25551 | Pain in right hip | ICD10 | 09082017 | 09052017 | 09072017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 09052017 | 2017-09-05T10:33:50+00:00 |  | 000066958-01 | JAMES | LEGG | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09082017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 09032017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905027 | J189 | Pneumonia, unspecified organism | ICD10 | 09082017 | 09032017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09052017 | 2017-09-05T10:57:28+00:00 |  | 000093520-01 | Mary | Leroy | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09082017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 09022017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906064 | L03313 | Cellulitis of chest wall | ICD10 | 09082017 | 09022017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09052017 | 2017-09-05T09:26:49+00:00 |  | 000085453-01 | Doris | Reis | SAMAAN, ROBERT G | 921469 | ROBERT G | SAMAAN | 1265482871 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 09082017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 09022017 | 09052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906046 | A419, D61818, N390, R5081 | Fever presenting with conditions classified elsewhere | ICD10 | 09082017 | 09022017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09052017 | 2017-09-05T11:35:18+00:00 | 258508167245 | 000010071-01 | HELEN | STONE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09022017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905056 | E871, R0689 | Other abnormalities of breathing | ICD10 | 09082017 | 09022017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07202017 | 2017-07-20T14:31:27+00:00 | 025242987-7240 | 000112918-01 | Meita | Tambi | ORTHO & NEURO CONSULTS I | 936690 | MARK E | GITTINS | 1598749699 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09072017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720081 | M1611, M25551 | Pain in right hip | ICD10 | 09082017 | 09072017 | 09082017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08282017 | 2017-08-28T09:36:45+00:00 | 255369987239 | 000029371-01 | WILLIAM | SPIRES | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08272017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828024 | R4182 | Altered mental status, unspecified | ICD10 | 09082017 | 08272017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 09052017 | 2017-09-05T10:45:50+00:00 |  | 000062837-01 | MICHAEL | CASTO | OSU INTERNAL MED LLC | 948296 | LINDA T | VONG | 1922341957 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 09082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09032017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906062 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 09082017 | 09042017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09082017 | 2017-09-08T11:06:43+00:00 |  | 000071747-01 | Constance | Bethel | ADENA MEDICAL GROUP LLC | 905638 | BROOKE M | MARANZANA | 1508829565 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09052017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908079 | R6889 | Other general symptoms and signs | ICD10 | 09082017 | 09052017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08222017 | 2017-08-22T09:48:20+00:00 |  | 000118314-01 | Randy | Bean | ORTHO ASSOC OF ZANESVILL | 922140 | WILLIAM D | ALLEN | 1033101399 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09082017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 09062017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822062 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 09082017 | 09062017 | 09072017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08022017 | 2017-08-02T10:33:47+00:00 |  | 000074555-01 | Irma | Stewart | MANA MEDICAL, INC. | 928193 | BINIT J | SHAH | 1912181389 | OH HSP FOR PSYCHIATRY | 906239 | 1821186271 | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | OHIO HOSPITAL FOR PSYCHIATRY | 09082017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 08022017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802062 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 09082017 | 08022017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 29.0 |
| 08252017 | 2017-08-25T10:30:17+00:00 | 257724487236 | 000066958-01 | JAMES | LEGG | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09082017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08252017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825028 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 09082017 | 08252017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08292017 | 2017-08-29T14:33:34+00:00 | 025681058-7242 | 000038535-01 | CECELIA | ALEXANDER | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08312017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829085 | T8132XA | Disruption of internal operation (surgical) wound, NEC, init | ICD10 | 09082017 | 08312017 | 09072017 | 21750 | CLOSURE OF STERNOTOMY SEPARATION WITH OR WITHOUT DEBRIDEMENT | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  |  | 7.0 |
| 09052017 | 2017-09-05T15:44:14+00:00 |  | 000091195-01 | Constance | Holtz | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 09082017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 09082017 | 09092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170905107 | S2239XA | Fracture of one rib, unsp side, init for clos fx | ICD10 | 09082017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
