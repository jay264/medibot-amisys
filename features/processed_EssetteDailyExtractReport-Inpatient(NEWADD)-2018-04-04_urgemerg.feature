Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-04_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-04_URGEMERG
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
| 03282018 | 2018-03-28T09:15:55+00:00 |  | 000113746-01 | Steven | Battle | HOSPITALIST MEDICINE PHY | 932329 | GENEVIEVE | DEKIEL | 1780978015 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03272018 | 04032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329002 | E11621 | Type 2 diabetes mellitus with foot ulcer | ICD10 | 04042018 | 03272018 | 04032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04022018 | 2018-04-02T16:32:04+00:00 |  | 000058059-01 | PAMELA | THOMPSON | MOUNT CARMEL HLTH SYS | 936068 | ADAM M | ZOCHOWSKI | 1427056399 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03302018 | 04032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403043 | K8050, K811, R17 | Unspecified jaundice | ICD10 | 04042018 | 03302018 | 04032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03202018 | 2018-03-20T11:38:34+00:00 |  | 000019859-01 | ANITA | PARRETT | MOUNT CARMEL WEST PHYS | 936924 | CHARLES R | HOLDEN | 1093713133 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04042018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04022018 | 04032018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320080 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 04042018 | 04022018 | 04032018 | 34701, 34812 | XPOSE FOR ENDOPROSTH, AORTIC | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 03192018 | 2018-03-19T11:17:26+00:00 |  | 000092546-01 | Kathleen | Worthing | MERCY HEALTH PHYSICIANS | 921826 | SYED Z | HAQ | 1487653184 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 04042018 | Approved | MediGold Southwest OH Essential Care | Fax | Secondary Only | Inpatient | 03182018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319061 | I469, N390, R4182 | Altered mental status, unspecified | ICD10 | 04042018 | 03182018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03262018 | 2018-03-26T09:24:25+00:00 |  | 000045075-01 | Albert | Young | HOSPITAL MEDICINE SERVIC | 941188 | ABDAL R | ALHYARI | 1205051570 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Inpatient | IP | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 04042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03242018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326078 | J189, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04042018 | 03242018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03272018 | 2018-03-27T08:34:59+00:00 |  | 000066499-01 | ALICE | SMITH | LICKING MEM INPATIENT ME | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03252018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327073 | I69353 | Hemiplga following cerebral infrc aff right nondom side | ICD10 | 04042018 | 03252018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03272018 | 2018-03-27T11:20:29+00:00 |  | 000083286-01 | Wilma | Hutchinson | MARIETTA MEMORIAL HSP | 906929 | FREDERIC A | HUMPHREY | 1366438848 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 04042018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 03262018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327088 | E871, R109, R197 | Diarrhea, unspecified | ICD10 | 04042018 | 03262018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03272018 | 2018-03-27T11:50:58+00:00 |  | 000006477-01 | GAROLD | MEADOWS | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03262018 | 04032018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327094 | J159 | Unspecified bacterial pneumonia | ICD10 | 04042018 | 03262018 | 04032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 03272018 | 2018-03-27T12:22:38+00:00 |  | 000104401-01 | GLENN | RICE | RIVERSIDE TRAUMA SURGEON | 920504 | JOHN A | BACH | 1891990859 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 04042018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03262018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328058 | G8194 | Hemiplegia, unspecified affecting left nondominant side | ICD10 | 04042018 | 03262018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03292018 | 2018-03-29T13:37:19+00:00 |  | 000082976-01 | J | Beaver | ORTHOPEDIC & NEUROLOGICA | 935727 | MICHAEL B | CANNONE | 1275517328 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04042018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04022018 | 04032018 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329060 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 04042018 | 04022018 | 04032018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03302018 | 2018-03-30T15:36:39+00:00 |  | 000104659-01 | Barbara | Adkins | HOSPITALIST MEDICINE PHY | 927692 | SHAHED | HASNAT | 1770915951 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03292018 | 04032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402010 | D696, E876, N179 | Acute kidney failure, unspecified | ICD10 | 04042018 | 03292018 | 04032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04022018 | 2018-04-02T11:36:31+00:00 |  | 000012813-01 | JAMES | HAAS | HOSPITALIST MEDICINE PHY | 948949 | KHAIRI | SHMINA | 1205275674 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04012018 | 04032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402078 | A419, E872, T68XXXA | Hypothermia, initial encounter | ICD10 | 04042018 | 04012018 | 04032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03212018 | 2018-03-21T13:52:50+00:00 |  | 000071131-01 | Richard | Buck | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04042018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 03202018 | 03222018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321061 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 04042018 | 03202018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03262018 | 2018-03-26T09:12:05+00:00 |  | 000109508-01 | Lorin | Mccann | FAIRFIELD HLTHCARE PROFS | 951685 | JUSTIN J | ZAMOYSKI | 1801236872 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03252018 | 04032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326066 | R079 | Chest pain, unspecified | ICD10 | 04042018 | 03252018 | 04032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 03262018 | 2018-03-26T10:16:40+00:00 |  | 000020367-01 | DOLORES | WISECUP | HOSPITAL MEDICINE SERVIC | 941188 | ABDAL R | ALHYARI | 1205051570 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Inpatient | IP | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 04042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03242018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327003 | N179, N189 | Chronic kidney disease, unspecified | ICD10 | 04042018 | 03242018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03262018 | 2018-03-26T11:04:30+00:00 |  | 000043878-01 | ROBERT | FYFFE | APOGEE MED GRP OHIO INC | 947840 | OSAMA | ALHAJJAR | 1801233077 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03232018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327009 | I4891 | Unspecified atrial fibrillation | ICD10 | 04042018 | 03232018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03272018 | 2018-03-27T10:30:01+00:00 |  | 000081585-01 | Pamela | Hennigan | CAPE FEAR VALLEY MEDICAL | 946063 |  | CAPE FEAR VALLEY MEDICAL CENTER | 1639172869 | CAPE FEAR VALLEY MEDICAL | 946063 | 1639172869 | CAPE FEAR VALLEY MEDICAL CENTER | 1639172869 | Inpatient | IP | Concurrent Review | CONC |  | CAPE FEAR VALLEY MEDICAL CENTER | 04042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03262018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327080 | E162 | Hypoglycemia, unspecified | ICD10 | 04042018 | 03262018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03292018 | 2018-03-29T14:46:13+00:00 |  | 000000720-01 | DARLENE | DICK | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03292018 | 04012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330032 | J040, J111 | Flu due to unidentified influenza virus w oth resp manifest | ICD10 | 04042018 | 03292018 | 04012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04022018 | 2018-04-02T11:06:31+00:00 |  | 000069774-01 | MARSHA | DREYFUS | MOUNT CARMEL HLTH SYS | 907180 | GREGORY S | MANGEN | 1386856581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03302018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402061 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 04042018 | 03302018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04022018 | 2018-04-02T11:38:34+00:00 |  | 000081349-01 | Beulah | Sparks | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04042018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02222018 | 02232018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403010 | M179 | Osteoarthritis of knee, unspecified | ICD10 | 04042018 | 02222018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02202018 | 2018-02-20T13:48:10+00:00 |  | 000101621-01 | Judy | Holderman | ORTHOPEDIC ONE INC | 917927 | TERRY T | FOWLER | 1447474705 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04042018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02282018 | 03012018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221021 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 04042018 | 02282018 | 03012018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03262018 | 2018-03-26T14:13:39+00:00 |  | 000089613-01 | Nella | Thurman | KNOX COMMUNITY HOSP GRP | 905470 | KOMBIAN | GBARUK | 1235171802 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 04042018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03242018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327042 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04042018 | 03242018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03302018 | 2018-03-30T10:25:41+00:00 |  | 000095388-01 | Marshall | Smith | APOGEE MED GRP OHIO INC | 943520 | DALIA M | DAWOUD | 1508026386 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03292018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330059 | I10, K859, K869 | Disease of pancreas, unspecified | ICD10 | 04042018 | 03292018 | 03312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04022018 | 2018-04-02T12:49:42+00:00 |  | 000103876-01 | SUSAN | COOK | MIAMI VALLEY HSPISTS GRP | 911914 | MICHAEL J | REBAR | 1235115809 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 04042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03292018 | 04032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402050 | R4182 | Altered mental status, unspecified | ICD10 | 04042018 | 03292018 | 04032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04022018 | 2018-04-02T11:20:04+00:00 |  | 000117329-01 | Jannette | Scarbury | OHIOHEALTH PHYS GRP | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04042018 | Approved | MediGold Essential Care | Fax | ACO - Atrial Fib | Inpatient | 03302018 | 04022018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402075 | I4891 | Unspecified atrial fibrillation | ICD10 | 04042018 | 03302018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04032018 | 2018-04-03T11:44:48+00:00 |  | 000078904-01 | Sue | Mudgett | SOUND INPATIENT PHYS OF | 913868 | RAJU | FATEHCHAND | 1346201407 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 04042018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 01212018 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403037 | R0602 | Shortness of breath | ICD10 | 04042018 | 01212018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04032018 | 2018-04-03T07:28:02+00:00 |  | 000119404-01 | LEWIS | KERANS | HOSPITALIST MEDICINE PHY | 921436 | KETAN K | PATEL | 1699721050 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 04042018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04022018 | 04032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403051 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 04042018 | 04022018 | 04032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04032018 | 2018-04-03T09:08:38+00:00 |  | 000013081-01 | DOLORES | LYNCH | OHIOHEALTH PHYS GRP | 915438 | XAIOSONG | ZHAO | 1386865111 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 04042018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04012018 | 04032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403064 | I10 | Essential (primary) hypertension | ICD10 | 04042018 | 04012018 | 04032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
