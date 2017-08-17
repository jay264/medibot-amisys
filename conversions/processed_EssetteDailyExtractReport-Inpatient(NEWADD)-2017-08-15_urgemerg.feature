Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-15_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-15_URGEMERG
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
| 07212017 | 2017-07-21T11:12:07+00:00 |  | 000000705-01 | Gloria | Ross | OHIOHEALTH PHYS GRP | 926891 | BRYAN S | ALEXANDER | 1588824387 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 08152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07202017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724005 | V877XXA | Person injured in collision betw oth mtr veh (traffic), init | ICD10 | 08152017 | 07202017 | 08122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 23.0 |
| 08042017 | 2017-08-04T14:15:44+00:00 |  | 000087182-01 | James | Gardner | SOUND KENWOOD HSPISTS OF | 924227 | BRIAN | WEBSTER | 1366567372 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 08152017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 08032017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170804046 | J159 | Unspecified bacterial pneumonia | ICD10 | 08152017 | 08032017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08042017 | 2017-08-04T10:28:21+00:00 |  | 000112406-01 | Franklin | Stivers | MERCY HEALTH PHYSICIANS | 921019 | MARK | POYNTER | 1659358109 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 08152017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08082017 | 08112017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170804028 | K639 | Disease of intestine, unspecified | ICD10 | 08152017 | 08082017 | 08122017 | 44140 | COLECTOMY, PARTIAL, C ANASTOMOSIS | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 4.0 |
| 07272017 | 2017-07-27T08:43:41+00:00 |  | 000083303-01 | John | Groff Jr | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08152017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 07262017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727010 | N390, R0689, R443 | Hallucinations, unspecified | ICD10 | 08152017 | 07262017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 07192017 | 2017-07-19T08:35:48+00:00 |  | 000049318-01 | JERRY | KOCHER | ADENA MEDICAL GROUP LLC | 927071 | MAYSA | EL-SAYYID | 1962638122 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 08152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07172017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719006 | R4182 | Altered mental status, unspecified | ICD10 | 08152017 | 07172017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 17.0 |
| 08072017 | 2017-08-07T09:21:13+00:00 | 250257637218 | 000086264-01 | Jerry | Carrier | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08152017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08052017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807009 | R29810 | Facial weakness | ICD10 | 08152017 | 08052017 | 08142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 08142017 | 2017-08-14T10:57:56+00:00 | 259150837223 | 000012284-01 | BARBARA | BAUR | SOUND PHYSICIANS OF OHI | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08112017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814053 | I639 | Cerebral infarction, unspecified | ICD10 | 08152017 | 08112017 | 08142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08082017 | 2017-08-08T11:10:22+00:00 | 256599797220 | 000103255-01 | Cynthia | Jacks | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08082017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808061 | N390 | Urinary tract infection, site not specified | ICD10 | 08152017 | 08082017 | 08142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08102017 | 2017-08-10T08:39:06+00:00 | 252167867222 | 000012390-01 | GOLDIE | PETERS | SOUND PHYSICIANS OF OHI | 901165 | OLGA V | PYLAEVA | 1508811811 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08092017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810014 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 08152017 | 08092017 | 08142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08082017 | 2017-08-08T08:57:58+00:00 | 254517797219 | 000015216-01 | MINNIE | BRONSON | COLS INPATIENT CARE INC | 932326 | CALEB T | WAGNER | 1124310826 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08152017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08072017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808013 | I509 | Heart failure, unspecified | ICD10 | 08152017 | 08072017 | 08142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08082017 | 2017-08-08T12:27:18+00:00 |  | 000041649-01 | Milene | Arbaugh | COPC CENTRAL OHIO PRIMAR | 943209 | NASIR | SUMMIYAH | 1962692103 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08072017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808101 | J189 | Pneumonia, unspecified organism | ICD10 | 08152017 | 08072017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08142017 | 2017-08-14T09:23:40+00:00 |  | 000090214-01 | Walter | Risko | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 08152017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 08152017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170814015 | I639 | Cerebral infarction, unspecified | ICD10 | 08152017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08142017 | 2017-08-14T09:57:04+00:00 |  | 000071036-01 | Dwight | Johnson | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 08152017 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Inpatient | 08152017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170814043 | I639 | Cerebral infarction, unspecified | ICD10 | 08152017 | 08152017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08152017 | 2017-08-15T08:36:23+00:00 |  | 000082045-01 | Patricia | Klaiber | ORTHO & NEURO CONSULTS I | 902431 | YING H | CHEN | 1629052782 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 08152017 | Approved | MediGold Classic Preferred | Fax | Pending Admission | Inpatient | 08152017 | 10142017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A170815014 | M47812 | Spondylosis w/o myelopathy or radiculopathy, cervical region | ICD10 | 08152017 |  |  | 22551, 22853, 20930, 20936 | AUTOGRAFT FOR SPINE SURGERY ONLY (INCLUDES HARVESTING THE | CPT | 0, 0, 0, 0 | 1, 1, 1, 1 | , , ,  | 61, 61, 61, 61 | CPT | C4 |  |  | No child records to display. |  |
| 08072017 | 2017-08-07T09:27:21+00:00 |  | 000089567-01 | Lowell | Markwell | SPRINGFIELD HLTH CARE CT | 902363 | VIPUL K | PATEL | 1548233851 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08152017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08062017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808011 | D72829, R197 | Diarrhea, unspecified | ICD10 | 08152017 | 08062017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08142017 | 2017-08-14T11:58:08+00:00 |  | 000019429-01 | DAVID | HOWARD | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 08152017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 08152017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170814060 | G4089 | Other seizures | ICD10 | 08152017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08012017 | 2017-08-01T16:11:08+00:00 |  | 000115330-01 | DIANA | JOHNSON | ORTHO TRAUMA SRVS LTD | 911031 | JOAQUIN | CASTANEDA | 1801932447 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 08152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08012017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802052 | S7222XA | Displaced subtrochanteric fracture of left femur, init | ICD10 | 08152017 | 08012017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 08092017 | 2017-08-09T16:43:59+00:00 |  | 000079991-01 | Virginia | Mcbride | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08082017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810023 | K269, R109, R112 | Nausea with vomiting, unspecified | ICD10 | 08152017 | 08082017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08082017 | 2017-08-08T08:39:00+00:00 |  | 000081339-01 | Annice | Ogden | OSU INTERNAL MED LLC | 947626 | JILL M | VILJOEN | 1881913242 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 08152017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08062017 | 08132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808083 | I509 | Heart failure, unspecified | ICD10 | 08152017 | 08062017 | 08132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08082017 | 2017-08-08T15:06:59+00:00 |  | 000113654-01 | Gloria | Shrader | EASTSIDE INTERNAL MED | 921408 | JYOTI J | MEHTA | 1932170933 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 08152017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08072017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809026 | R112, R634 | Abnormal weight loss | ICD10 | 08152017 | 08072017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06192017 | 2017-06-19T16:02:19+00:00 |  | 000095352-01 | ANN | NICKLEY | MANA MEDICAL, INC. | 928193 | BINIT J | SHAH | 1912181389 | OH HSP FOR PSYCHIATRY | 906239 | 1821186271 | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | OHIO HOSPITAL FOR PSYCHIATRY | 08152017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06212017 | 08132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620037 | F1220, F209 | Schizophrenia, unspecified | ICD10 | 08152017 | 06212017 | 08132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 43.0 |
| 08082017 | 2017-08-08T08:43:30+00:00 |  | 000076017-01 | Vanessa | Powell | HOSPITAL MEDICINE SERVIC | 949655 | WONDWOSSEN Y | DERERIE | 1760793897 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08152017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 08072017 | 08132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808085 | R079 | Chest pain, unspecified | ICD10 | 08152017 | 08072017 | 08132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08102017 | 2017-08-10T14:34:08+00:00 |  | 000117442-01 | Brett | Schulz | COLS SURGICAL ASSOC INC | 937328 | B J | POMERANTS | 1164475034 | OHIOHEALTH CORPORATION | 905908 | 1578545273 | DUBLIN METHODIST HOSPITAL | 1801937008 | Inpatient | IP | Concurrent Review | CONC |  | DUBLIN METHODIST HOSPITAL | 08152017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08092017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810067 | L02211 | Cutaneous abscess of abdominal wall | ICD10 | 08152017 | 08092017 | 08122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08102017 | 2017-08-10T11:37:40+00:00 | 017889293-7199 | 000087105-01 | Susan | Hartman-Nill | JOINT IMPLANT SURGEONS | 946748 | DAVID A | CRAWFORD | 1073711982 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 08152017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08142017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810050 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 08152017 | 08142017 | 08152017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08092017 | 2017-08-09T15:20:33+00:00 | 017754300-7199 | 000112783-01 | CHARLES | RAMSEY | JOINT IMPLANT SURGEONS | 910873 | MICHAEL J | MORRIS | 1497899223 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 08152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08142017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809075 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 08152017 | 08142017 | 08152017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08152017 | 2017-08-15T14:15:37+00:00 | 025315708-7212 | 000046749-01 | J | MUNCY | COPC CENTRAL OHIO PRIMAR | 936781 | MARY S | GRULKOWSKI | 1760420707 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 08142017 | 08152017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815071 | K432 | Incisional hernia without obstruction or gangrene | ICD10 | 08152017 | 08142017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08012017 | 2017-08-01T09:31:52+00:00 | 250545147212 | 000004320-01 | JESSE | HURT | SOUND PHYSICIANS OF OHI | 932745 | SERAG E | ABDULAZIZ | 1164718409 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08012017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801025 | D62, R791 | Abnormal coagulation profile | ICD10 | 08152017 | 08012017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08102017 | 2017-08-10T13:12:18+00:00 |  | 000109614-01 | Ronald | Anderson | OSU INTERNAL MED LLC | 932550 | DEEPAK | RAI | 1013203900 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 08152017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 08092017 | 08122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810057 | I959 | Hypotension, unspecified | ICD10 | 08152017 | 08092017 | 08122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08142017 | 2017-08-14T10:10:25+00:00 | 250345777224 | 000048439-01 | CARMINA | ERAMO | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08112017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814025 | I441 | Atrioventricular block, second degree | ICD10 | 08152017 | 08112017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08072017 | 2017-08-07T09:52:08+00:00 |  | 000052923-01 | MOLLY | STICKEL | KETTERING MEDICAL CENTER SYCAMORE | 905903 |  | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 08152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08042017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807066 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 08152017 | 08042017 | 08142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 08142017 | 2017-08-14T09:23:29+00:00 | 251714277225 | 000010276-01 | HENRY | GILLIAM | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08152017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 08132017 | 08152017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814009 | J159 | Unspecified bacterial pneumonia | ICD10 | 08152017 | 08132017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08032017 | 2017-08-03T16:34:10+00:00 |  | 000112351-01 | Michael | Arlinghaus | MERCY HEALTH PHYSICIANS | 921220 | JEFFREY R | WELSHHANS | 1851425938 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 08152017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08102017 | 08132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170804001 | K5792 | Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 08152017 | 08102017 | 08142017 | 44207, S2900 | SURGICAL TECHNIQUES REQUIRING USE OF ROBOTIC SURGICAL SYSTEM | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 4, 4 | HCPCS | HC |  |  |  | 4.0 |
| 08142017 | 2017-08-14T16:12:51+00:00 |  | 000026790-01 | JOANN | HITE | LICKING MEM INPATIENT ME | 901182 | DAVID W | KOONTZ | 1730193137 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08152017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 08152017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170815002 | I63412 | Cereb infrc due to embolism of left middle cerebral artery | ICD10 | 08152017 | 08152017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 07212017 | 2017-07-21T11:16:27+00:00 |  | 000005857-01 | Sherman | Ross | COMMUNITY HSPIST LLC | 932655 | ABDULMAJID | ADAM | 1528362258 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 08152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07202017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724006 | G939 | Disorder of brain, unspecified | ICD10 | 08152017 | 07202017 | 08122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 08142017 | 2017-08-14T09:09:01+00:00 | 250082187225 | 000048915-01 | DONNA | BELCHER | EMERGENCY SERVICES INC | 918783 | TIMOTHY J | COMTE | 1821214990 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08152017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 08132017 | 08152017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814005 | J159 | Unspecified bacterial pneumonia | ICD10 | 08152017 | 08132017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07312017 | 2017-07-31T10:27:57+00:00 |  | 000046943-01 | GLENN | MCKINNEY | NEUROSCIENCE CENTER | 947785 | SHRADDHA | MAINALI | 1972733657 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07302017 | 08122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801027 | I619, I639 | Cerebral infarction, unspecified | ICD10 | 08152017 | 07302017 | 08122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08092017 | 2017-08-09T09:04:56+00:00 |  | 000096520-01 | Earl | Watts Jr | OSU INTERNAL MED LLC | 930397 | ERIC J | ADKINS | 1528046232 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 08152017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08102017 | 08122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809052 | I779 | Disorder of arteries and arterioles, unspecified | ICD10 | 08152017 | 08082017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08072017 | 2017-08-07T12:36:23+00:00 |  | 000052557-01 | JANICE | SMITH | COPC CENTRAL OHIO PRIMAR | 936972 | NISHIT G | JHAVERI | 1356400659 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08082017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808050 | E860 | Dehydration | ICD10 | 08152017 | 08082017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08072017 | 2017-08-07T11:05:56+00:00 |  | 000107652-01 | JUDITH | ROSE | OSU INTERNAL MED LLC | 912025 | PHILIP C | JONAS | 1558579110 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 08152017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 08052017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808039 | R42 | Dizziness and giddiness | ICD10 | 08152017 | 08052017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08072017 | 2017-08-07T11:25:53+00:00 |  | 000077925-01 | Edward | Rhoades | SOUND PHYSICIANS OF OHI | 948395 | MARK N | YOUSSEF | 1508203209 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 08152017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 08062017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807078 | J189, J9601, R0602 | Shortness of breath | ICD10 | 08152017 | 08062017 | 08122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08062017 | 2017-08-06T11:30:02+00:00 |  | 000001811-01 | JOYCE | MILLER | CENTRAL OH HSPISTS INC | 905876 | G ABDUL | PAYIND | 1184702581 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08062017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807091 | M542 | Cervicalgia | ICD10 | 08152017 | 08062017 | 08122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06222017 | 2017-06-22T10:54:16+00:00 | 026307358-7173 | 000020595-01 | GLENDELL | FRASHER | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08142017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622036 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 08152017 | 08142017 | 08152017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08032017 | 2017-08-03T09:32:41+00:00 | 179072037214 | 000093846-01 | Mary | McCreadie | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08152017 | Approved | MediGold Southeast OH Classic Preferred | Reports | Inpatient | Inpatient | 08022017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803018 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 08152017 | 08022017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 08092017 | 2017-08-09T15:20:33+00:00 | 017843575-7209 | 000113311-01 | Larry | Scott | JOINT IMPLANT SURGEONS | 910873 | MICHAEL J | MORRIS | 1497899223 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 08152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08142017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809074 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 08152017 | 08142017 | 08152017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08082017 | 2017-08-08T11:31:10+00:00 |  | 000077275-01 | Donald | Chamberlain | OSU INTERNAL MED LLC | 927012 | EDWARD M | HAAS | 1720213150 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 08152017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 08042017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808096 | J690 | Pneumonitis due to inhalation of food and vomit | ICD10 | 08152017 | 08042017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08092017 | 2017-08-09T18:35:09+00:00 |  | 000037785-01 | JOANN | PETERS | WRIGHT STATE PHYSICIANS | 903649 | AKPOFURE P | EKEH | 1063478022 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08092017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810030 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 08152017 | 08092017 | 08142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08112017 | 2017-08-11T10:43:00+00:00 |  | 000105357-01 | PAUL | SWICKARD | THE OH STATE UNIVERSITY | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 08152017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08102017 | 08122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811051 | R0602 | Shortness of breath | ICD10 | 08152017 | 08102017 | 08122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
