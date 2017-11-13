Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-10_thru_2017-11-12_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-10_thru_2017-11-12_URGEMERG
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
| 10232017 | 2017-10-23T09:39:07+00:00 | 251354777295 | 000054987-01 | SHARON | BAKER | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11102017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10212017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023028 | R55 | Syncope and collapse | ICD10 | 11102017 | 10212017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 11062017 | 2017-11-06T10:21:02+00:00 | 174602557307 | 000064610-01 | JANIS | VALLEN | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11102017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11042017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106034 | K7689 | Other specified diseases of liver | ICD10 | 11102017 | 11042017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10192017 | 2017-10-19T14:27:58+00:00 | 025429562-7278 | 000109253-01 | Ethel | Wyman | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11072017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020065 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11102017 | 11072017 | 11092017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 11082017 | 2017-11-08T15:30:25+00:00 |  | 000103311-01 | Daryl | Sheeley | MIAMI VALLEY HSPISTS GRP | 947756 | NIKHIL | PRASAD | 1114364460 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11102017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11072017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109005 | J90, R0602 | Shortness of breath | ICD10 | 11102017 | 11072017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11072017 | 2017-11-07T09:51:28+00:00 |  | 000091391-01 | Olive | Adkins | GENESIS HLTHCARE SYSTEM | 936421 |  | GENESIS HEALTHCARE SYSTEM | 1598868655 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11102017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 11062017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107071 | N3001 | Acute cystitis with hematuria | ICD10 | 11102017 | 11062017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11082017 | 2017-11-08T10:10:12+00:00 | 259615517311 | 000079862-01 | Franklin | Parrish | MOUNT CARMEL HLTH SYS | 937101 | MARK A | LINDSEY | 1770583874 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11102017 | Approved | MediGold Southeast OH Essential Care | Reports | Inpatient | Inpatient | 11072017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108029 | K5669 | Other intestinal obstruction | ICD10 | 11102017 | 11072017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11032017 | 2017-11-03T11:48:02+00:00 |  | 000097505-01 | Robert | Haslett | OHIOHEALTH PHYS GRP | 909706 | MOSES S | IJAZ | 1558325902 | RIVERSIDE METHODIST HSP | 902257 | 1467484972 | RIVERSIDE METHODIST HSP BEHAVIORAL H | 1225060312 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | RIVERSIDE METHODIST HSP BEHAVIORAL H | 11102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11032017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107031 | F322 | Major depressv disord, single epsd, sev w/o psych features | ICD10 | 11102017 | 11032017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10272017 | 2017-10-27T13:40:55+00:00 |  | 000077182-01 | Herbert | Satterfield | ORTHO ASSOC OF ZANESVILL | 912928 | KARL C | SAUNDERS | 1285626531 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11102017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 11082017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030049 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11102017 | 11082017 | 11092017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11032017 | 2017-11-03T10:10:53+00:00 | 256615057306 | 000016476-01 | ANTONIO | SCALI | SOUND PHYSICIANS OF OHI0 | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11102017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11022017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103031 | J159 | Unspecified bacterial pneumonia | ICD10 | 11102017 | 11022017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11102017 | 2017-11-10T08:59:06+00:00 |  | 000108713-01 | Sara | Toomey | COLON & RECTAL SURG INC | 937269 | ANANTHA | PADMANABHAN | 1689674780 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11102017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 11072017 | 11092017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110021 | K432 | Incisional hernia without obstruction or gangrene | ICD10 | 11102017 | 11072017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10272017 | 2017-10-27T12:03:17+00:00 |  | 000030053-01 | MARY | SHANKS | OH GASTRO GRP INC | 914351 | MICHAEL D | BROGAN | 1922091594 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 11102017 | Approved | TRINITY HEALTH | Fax | Secondary Only | Inpatient | 10252017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027045 | I63511 | Cereb infrc d/t unsp occls or stenos of right mid cereb art | ICD10 | 11102017 | 10252017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11062017 | 2017-11-06T11:24:05+00:00 |  | 000101409-01 | Carol | Lowe | ADENA MEDICAL GROUP LLC | 936969 | STEPHEN J | JEPSEN | 1871534057 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11062017 | 11092017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106058 | I6523 | Occlusion and stenosis of bilateral carotid arteries | ICD10 | 11102017 | 11062017 | 11092017 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 09262017 | 2017-09-26T09:35:41+00:00 |  | 000081295-01 | Raymond | Stoehr | MERCY HEALTH PHYSICIANS | 921760 | FRANCIS X | FLOREZ | 1780630053 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 11102017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 11082017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926046 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11102017 | 11082017 | 11092017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10292017 | 2017-10-29T15:26:01+00:00 |  | 000097505-01 | Robert | Haslett | CENTRAL OH HSPISTS INC | 905865 | MICHAEL E | BANG | 1245349463 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 11102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10282017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030062 | R569 | Unspecified convulsions | ICD10 | 11102017 | 10282017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11062017 | 2017-11-06T10:35:30+00:00 |  | 000115775-01 | Donald | Barnes | LICKING MEM HLTH PROF | 908828 | ERIC M | LAYNE | 1316164817 | LICKING MEM BEHAVIORAL H | 914102 | 1932149150 | LICKING MEMORIAL BEHAVIORAL HEALTH | 1932149150 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | LICKING MEMORIAL BEHAVIORAL HEALTH | 11102017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 11052017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107017 | F259, F609 | Personality disorder, unspecified | ICD10 | 11102017 | 11052017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11072017 | 2017-11-07T09:06:20+00:00 |  | 000070268-01 | Lynne | Beach | LICKING MEM INPATIENT ME | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11102017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11062017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107070 | A419, J40 | Bronchitis, not specified as acute or chronic | ICD10 | 11102017 | 11062017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11062017 | 2017-11-06T09:49:33+00:00 |  | 000088545-01 | Ila | Koehler | GENESIS MEDICAL GRP LLC | 946920 | YIHENEW A | NEGATU | 1407167323 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11102017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 11052017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106073 | R109 | Unspecified abdominal pain | ICD10 | 11102017 | 11052017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11072017 | 2017-11-07T14:01:00+00:00 |  | 000096836-01 | Mary | South | CLERMONT INTERNISTS ASSO | 921351 | PARAMESWARAN | HARIHARAN | 1720084460 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 11102017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 11072017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107107 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 11102017 | 11072017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11022017 | 2017-11-02T07:12:53+00:00 | 025678666-7275 | 000106732-01 | Helga | Scriven | COSHOCTON REGIONAL MEDIC | 936690 | MARK E | GITTINS | 1598749699 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11102017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 11092017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103064 | M1712, M25562 | Pain in left knee | ICD10 | 11102017 | 11092017 | 11102017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10272017 | 2017-10-27T14:57:03+00:00 | 025509114-7172 | 000076679-01 | Marjorie | Foreman | ORTHOPEDIC ONE INC | 925995 | JEFFREY R | BACKES | 1457689101 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11102017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 11082017 | 11102017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030071 | M75100, M75121 | Complete rotatr-cuff tear/ruptr of r shoulder, not trauma | ICD10 | 11102017 | 11082017 | 11102017 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 10242017 | 2017-10-24T10:00:56+00:00 | 257001747296 | 000027321-01 | NOEL | HARRIS | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11102017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10232017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024030 | I7410 | Embolism and thrombosis of unspecified parts of aorta | ICD10 | 11102017 | 10232017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 18.0 |
| 11072017 | 2017-11-07T07:12:27+00:00 | 025625329-7283 | 000042612-01 | SHEILA | MURPHY | JOINT IMPLANT SURGEONS | 910873 | MICHAEL J | MORRIS | 1497899223 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11092017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107009 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 11102017 | 11092017 | 11102017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10312017 | 2017-10-31T09:32:31+00:00 |  | 000082051-01 | Richard | Young | MIAMI VALLEY HOSPITAL | 936428 |  | MIAMI VALLEY HOSPITAL | 1073688354 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 11102017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10302017 | 11052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031066 | D62 | Acute posthemorrhagic anemia | ICD10 | 11102017 | 10302017 | 11052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11062017 | 2017-11-06T11:20:09+00:00 |  | 000076887-01 | Willanna | Swinehart | CENTRAL OH HSPISTS INC | 909717 | XIUQIONG | WANG | 1497856280 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 11102017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 11052017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107036 | I610 | Nontraumatic intcrbl hemorrhage in hemisphere, subcortical | ICD10 | 11102017 | 11052017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11062017 | 2017-11-06T10:02:59+00:00 |  | 000104808-01 | JONI | KISTLER | LICKING MEM INPATIENT ME | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11102017 | Approved | MediGold Southeast OH Essential Care | Fax | Secondary Only | Inpatient | 11052017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106080 | J189, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 11102017 | 11052017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11102017 | 2017-11-10T06:51:20+00:00 |  | 000032384-01 | DONALD | FOGLE | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11102017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 11092017 | 11102017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110001 | K811 | Chronic cholecystitis | ICD10 | 11102017 | 11092017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10292017 | 2017-10-29T15:19:25+00:00 |  | 000078792-01 | Hazel | Morehouse | OHIOHEALTH PHYS GRP | 946385 | KESHAV | DESHPANDE | 1285958611 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 11102017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 10282017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030060 | E875 | Hyperkalemia | ICD10 | 11102017 | 10282017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11012017 | 2017-11-01T08:54:51+00:00 | 252228337304 | 000049379-01 | DONNIE | ROSS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11102017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11012017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101003 | R0602 | Shortness of breath | ICD10 | 11102017 | 11012017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 10302017 | 2017-10-30T16:30:42+00:00 |  | 000106408-01 | Ernest | Erickson | MERCY HEALTH PHYSICIANS | 942669 | AMELIA J | WIGGINS | 1407099195 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 11102017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 11062017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101035 | M25552, S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 11102017 | 11062017 | 11092017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 1.0 |
| 10122017 | 2017-10-12T15:55:50+00:00 |  | 000084840-01 | Candace | Cox | MERCY HEALTH PHYSICIANS | 920797 | CHRISTOPHER | JUERGENS | 1225026412 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 11102017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 11012017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016011 | K5792, K639 | Disease of intestine, unspecified | ICD10 | 11102017 | 11012017 | 11092017 | 44160, 45330 | FIBEROPTIC SIGMOIDOSCOPY | CPT | 1, 1 | 1, 1 | Approved, Approved | 9, 9 | CPT | C4 |  |  |  | 1.0 |
| 11062017 | 2017-11-06T10:12:56+00:00 |  | 000116500-01 | Alden | Schneider | SOUND INPATIENT PHYS OF | 933044 | TIMOTHY E | BURGER | 1972889236 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 11102017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 11042017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107016 | E6601, E872, I5020, J189, N189, R0600, R739, Z720, Z1635 | Resistance to multiple antimicrobial drugs | ICD10 | 11102017 | 11042017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11072017 | 2017-11-07T13:46:47+00:00 |  | 000095474-01 | Cynthia | Meyer | SOUND PHYSICIANS OF OHI0 | 947711 | PATEL | BHUMIT | 1114269222 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 11102017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 11062017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107106 | I10 | Essential (primary) hypertension | ICD10 | 11102017 | 11062017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10242017 | 2017-10-24T15:02:12+00:00 |  | 000091241-01 | Mary | Perry | RECONSTRUCTIVE ORTHOS & | 932685 | JOSHUA M | MURPHY | 1982866356 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 11102017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 11072017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025055 | M1731, S82121S | Disp fx of lateral condyle of right tibia, sequela | ICD10 | 11102017 | 11072017 | 11092017 | 27447, 20680 | REMOVAL OF IMPLANT; DEEP(EG, BURIED WIRE, PIN, SCREW, ROD, PLATE) | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  |  | 1.0 |
| 11032017 | 2017-11-03T17:14:54+00:00 |  | 000077342-01 | David | Francis | MERCY HEALTH PHYSICIANS | 949473 | MOHI O | MITIEK | 1154643039 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 11102017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 11032017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106045 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 11102017 | 11032017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08282017 | 2017-08-28T11:58:20+00:00 |  | 000112593-01 | Robert | Long | ALLIANCE PHYSICIANS INC | 917471 | PHILLIP M | PORCELLI | 1629287677 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11102017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10262017 | 10282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828088 | M4722 | Other spondylosis with radiculopathy, cervical region | ICD10 | 11102017 | 10262017 | 10282017 | 22551, 22552, 22845, 22853 | INSJ BIOMECHANICAL DEVICE | CPT | 1, 3, 1, 1 | 1, 3, 1, 1 | Approved, Approved, Approved, Approved | 3, 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 11012017 | 2017-11-01T15:05:23+00:00 |  | 000100444-01 | Pauline | Danner | SWEST INPATIENT PHYS LLC | 931477 | ROBERT W | MOORE | 1780741058 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11102017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 10312017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101065 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 11102017 | 10312017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10302017 | 2017-10-30T15:06:40+00:00 |  | 000093417-01 | Marilyn | Darling | KNOX COMMUNITY HOSPITAL | 931029 | MARCUS | TOPINKA | 1790842870 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 11102017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10282017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030121 | I509 | Heart failure, unspecified | ICD10 | 11102017 | 10282017 | 11012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11082017 | 2017-11-08T09:09:27+00:00 | 255708377311 | 000037749-01 | CAROLYN | DAVIS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11102017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 11072017 | 11102017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108015 | R0602 | Shortness of breath | ICD10 | 11102017 | 11072017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11062017 | 2017-11-06T11:01:16+00:00 | 256262267307 | 000067322-01 | Virginia | Jones | MOUNT CARMEL HLTH SYS | 935081 | TIMOTHY J | WYNN | 1164461844 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11032017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106046 | N3000 | Acute cystitis without hematuria | ICD10 | 11112017 | 11032017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11032017 | 2017-11-03T11:03:07+00:00 | 261427757307 | 000005570-01 | DELORES | SMITH | SOUND PHYSICIANS OF OHI0 | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11112017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11032017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103046 | N179 | Acute kidney failure, unspecified | ICD10 | 11112017 | 11032017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11062017 | 2017-11-06T13:37:15+00:00 | 025612813-7298 | 000072483-01 | Shirley | Weaver | ORTHO & NEURO CONSULTS I | 935727 | MICHAEL B | CANNONE | 1275517328 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11112017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11082017 | 11102017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106098 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 11112017 | 11082017 | 11102017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 10242017 | 2017-10-24T14:31:51+00:00 |  | 000078780-01 | Robert | Strayer | CEN OH UROLOGY GRP INC | 937316 | E BRADLEY | PEWITT | 1104873744 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11122017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11082017 | 11122017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024081 | C642 | Malignant neoplasm of left kidney, except renal pelvis | ICD10 | 11122017 | 11082017 | 11122017 | 50545 | LAPARO RADICAL NEPHRECTOMY | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 11032017 | 2017-11-03T12:09:26+00:00 |  | 000031254-01 | JOYCE | MYERS | CENTRAL OHIO SURG ASSOC | 935984 | MARCUS R | MILLER | 1518965474 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11082017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106039 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 11122017 | 11082017 | 11112017 | 44210 | LAPARO TOTAL PROCTOCOLECTOMY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 11072017 | 2017-11-07T09:48:02+00:00 | 252841877310 | 000081892-01 | Lana | Oney | CENTRAL OHIO SURG ASSOC | 934949 | JEFFREY L | TURNER | 1831131077 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11062017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107030 | K631 | Perforation of intestine (nontraumatic) | ICD10 | 11122017 | 11062017 | 11112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10302017 | 2017-10-30T15:08:47+00:00 |  | 000005393-01 | RONALD | ROBICHAUD | MOUNT CARMEL HLTH PRVDRS | 942145 | NATHANIEL A | AMOR | 1922235498 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11122017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 11082017 | 11112017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101026 | S12112K | Nondisplaced Type II dens fracture, subs for fx w nonunion | ICD10 | 11122017 | 11082017 | 11112017 | 22318 | TREAT ODONTOID FX W/O GRAFT | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 11062017 | 2017-11-06T10:26:20+00:00 | 252624787307 | 000046641-01 | Robert | Wells | BRUCE L AUERBACH MD LLC | 902501 |  | BRUCE L AUERBACH MD LLC | 1770787723 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11122017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 11032017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106035 | R079 | Chest pain, unspecified | ICD10 | 11122017 | 11032017 | 11112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 11082017 | 2017-11-08T09:33:06+00:00 | 254589257311 | 000025511-01 | MICHAEL | FLAHERTY | MOUNT CARMEL HLTH SYS | 935780 | DEBORAH J | WOIDTKE | 1457339806 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11072017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108021 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 11122017 | 11072017 | 11112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
