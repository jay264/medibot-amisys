Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-27_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-27_URGEMERG
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
| 09182017 | 2017-09-18T14:19:07+00:00 |  | 000110200-01 | CECIL | JORDAN | MARIETTA HLTH CARE PHYS | 951677 | SARAH | WESCOTT | 1629418207 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 09272017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 09182017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919081 | R001, R55 | Syncope and collapse | ICD10 | 09272017 | 09182017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09122017 | 2017-09-12T12:54:08+00:00 |  | 000116781-01 | Judith | Pauley | SOUND PHYSICIANS OF OHI0 | 947711 | PATEL | BHUMIT | 1114269222 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 09272017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 09112017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912057 | I639 | Cerebral infarction, unspecified | ICD10 | 09272017 | 09112017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 09082017 | 2017-09-08T10:56:08+00:00 |  | 000100381-01 | Agostinho | Alvares | KHN IP MED | 944000 | NIRANSHINY | RAHUNANTHAN | 1477813392 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09072017 | 09092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908076 | I200, I214, R079 | Chest pain, unspecified | ICD10 | 09272017 | 09072017 | 09092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09262017 | 2017-09-26T09:09:42+00:00 |  | 000083237-01 | Robert | Thompson | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09252017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926012 | I455 | Other specified heart block | ICD10 | 09272017 | 09252017 | 09272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09252017 | 2017-09-25T10:43:52+00:00 | 254779217269 | 000074275-01 | Joseph | Martin | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09272017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 09252017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925049 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 09272017 | 09252017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09212017 | 2017-09-21T07:45:29+00:00 |  | 000034235-01 | Jacquelyn | Hutton | FAYETTE COUNTY MEM HSP 1 | 903662 |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 09272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09202017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921028 | E860, E876, N390 | Urinary tract infection, site not specified | ICD10 | 09272017 | 09202017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09082017 | 2017-09-08T08:04:24+00:00 |  | 000096172-01 | Helen | Charles | SOUND INPATIENT PHYS OF | 933044 | TIMOTHY E | BURGER | 1972889236 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 09272017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 09072017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908041 | N390, R109, R6510, K8580 | OTHER ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION | ICD10 | 09272017 | 09072017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 09192017 | 2017-09-19T15:54:48+00:00 |  | 000075590-01 | Roberta | Savage | MERCY HEALTH PHYSICIANS | 923525 | KRISTA M | HODGES | 1134274756 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 09272017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 09182017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920041 | J939 | Pneumothorax, unspecified | ICD10 | 09272017 | 09182017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08092017 | 2017-08-09T16:22:14+00:00 |  | 000082795-01 | LAWRENCE | RIESTENBERG | MERCY HEALTH PHYSICIANS | 921760 | FRANCIS X | FLOREZ | 1780630053 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 09272017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 09202017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810012 | M170 | Bilateral primary osteoarthritis of knee | ICD10 | 09272017 | 09202017 | 09222017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 2.0 |
| 09082017 | 2017-09-08T17:40:08+00:00 |  | 000115126-01 | Ruby | Layne | ORTHOPEDIC ONE INC | 917927 | TERRY T | FOWLER | 1447474705 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09272017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 09252017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912026 | S82142K | Displaced bicondylar fx l tibia, subs for clos fx w nonunion | ICD10 | 09272017 | 09252017 | 09262017 | 27724 | RPR TIBIA C ILIAC OR AUTOG GRFT | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09182017 | 2017-09-18T10:13:07+00:00 |  | 000105304-01 | Arine | Mowery | MID STATE PHYSICIANS LLP | 922998 | IFIOK A | IDEM | 1427288174 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09272017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 09172017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919001 | L03211 | Cellulitis of face | ICD10 | 09272017 | 09172017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09272017 | 2017-09-27T09:13:47+00:00 |  | 000071565-01 | Jack | Utzinger | CEN OH UROLOGY GRP INC | 907066 | BENJAMIN J | MARTIN | 1609893221 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09272017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 09252017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927006 | N401 | Enlarged prostate with lower urinary tract symptoms | ICD10 | 09272017 | 09252017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08102017 | 2017-08-10T10:23:09+00:00 | 025513971-7222 | 000071454-01 | Mary | Woosley | MOUNT CARMEL WEST PHYS | 935048 | MICHAEL B | WILLIARD | 1184617268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09252017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810040 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 09272017 | 09252017 | 09262017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09262017 | 2017-09-26T10:27:46+00:00 | 255395057268 | 000082879-01 | Susan | Toney | CENTRAL OHIO SURG ASSOC | 927595 | MAURICE P | PAGE | 1013177815 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09252017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926034 | R1084 | Generalized abdominal pain | ICD10 | 09272017 | 09252017 | 09272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09252017 | 2017-09-25T11:30:39+00:00 |  | 000093683-01 | Don | Funk | LICKING MEM HLTH PROF | 947795 | MARUF A | ALI | 1104258979 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 09272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09212017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925085 | A419, E871, J181, R531 | Weakness | ICD10 | 09272017 | 09222017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08282017 | 2017-08-28T11:51:57+00:00 |  | 000081214-01 | Terry | Mcquaide | HOCKING VALLEY MED GRP | 949829 | TAREK M | AZIZ | 1679592075 | HOCKING VALLEY COMMUNITY | 906222 | 1295840007 | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 1801903109 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 09272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08252017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828114 | F29, F3161 | Bipolar disorder, current episode mixed, mild | ICD10 | 09272017 | 08252017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 31.0 |
| 09152017 | 2017-09-15T13:46:54+00:00 |  | 000097007-01 | Billy | Campbell | COMMUNITY HSPIST LLC | 947504 | KEITH A | ROSING | 1053722371 | BETHESDA MEMORIAL HOSPITAL INC | 916807 | 1417952748 | BETHESDA MEMORIAL HOSPITAL INC | 1417952748 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA MEMORIAL HOSPITAL INC | 09272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09142017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915088 | R4182 | Altered mental status, unspecified | ICD10 | 09272017 | 09142017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 09182017 | 2017-09-18T11:16:43+00:00 |  | 000083273-01 | Vance | Mace | ADENA MEDICAL GROUP LLC | 902974 | ZORAN | NAUMOVSKI | 1326041138 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09152017 | 09222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919033 | A419 | Sepsis, unspecified organism | ICD10 | 09272017 | 09152017 | 09222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08292017 | 2017-08-29T11:47:11+00:00 |  | 000033105-01 | DELORES | PERKINS | COLS BONE JOINT & HAND S | 936391 | RICHARD A | FANKHAUSER | 1023091113 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09262017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829053 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 09272017 | 09262017 | 09272017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09252017 | 2017-09-25T13:30:15+00:00 |  | 000044147-01 | Dorothy | Imler | APOGEE MED GRP OHIO INC | 947342 | RAZVAN I | DUCU | 1093017790 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09222017 | 09242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925094 | H538, R6510 | SIRS of non-infectious origin w/o acute organ dysfunction | ICD10 | 09272017 | 09222017 | 09242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07262017 | 2017-07-26T10:00:41+00:00 |  | 000097160-01 | Sharon | Johnson | SPFLD ORTHO SPORTS MED L | 908174 | IAN | THOMPSON | 1619928371 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 09272017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 09122017 | 09152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726024 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 09272017 | 09122017 | 09152017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 09182017 | 2017-09-18T08:49:55+00:00 | 170158287259 | 000104479-01 | Mary | Dudley | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09162017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918005 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 09272017 | 09162017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 09192017 | 2017-09-19T07:27:24+00:00 |  | 000028205-01 | ANN | CARPENTER | OSU INTERNAL MED LLC | 941950 | KERRY A | ROGERS | 1659534246 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 09272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09182017 | 09242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919108 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 09272017 | 09182017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09272017 | 2017-09-27T11:15:28+00:00 | 026365464-7241 | 000073186-01 | Karolyn | Shaw | MOUNT CARMEL HLTH PRVDRS | 933631 | SHILPA A | PADIA | 1760799175 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09272017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 09262017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927042 | C50919 | Malignant neoplasm of unsp site of unspecified female breast | ICD10 | 09272017 | 09262017 | 09272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09142017 | 2017-09-14T13:24:40+00:00 |  | 000088761-01 | Nancy | Atkinson | ADENA MEDICAL GROUP LLC | 936969 | STEPHEN J | JEPSEN | 1871534057 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09192017 | 09222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914091 | I70509 | Unsp athscl nonaut bio bypass of the extrm, unsp extremity | ICD10 | 09272017 | 09192017 | 09222017 | 35556, 35572, 35656 | BYPASS GR, NT VN, FEMORAL-POPLITEAL | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 09182017 | 2017-09-18T16:13:39+00:00 |  | 000109912-01 | William | Redick | LANCASTER SURGICAL ASSOC | 936974 | SCOTT O | JOHNSON | 1528058971 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09172017 | 09232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919105 | K5669 | Other intestinal obstruction | ICD10 | 09272017 | 09172017 | 09232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09262017 | 2017-09-26T08:16:42+00:00 |  | 000012705-01 | GAIL | BUMP | MOUNT CARMEL HLTH PRVDRS | 920611 | RYAN A | ANTHONY | 1295942647 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09252017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926004 | I480 | Paroxysmal atrial fibrillation | ICD10 | 09272017 | 09252017 | 09272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09222017 | 2017-09-22T14:17:44+00:00 | 260585587265 | 000022489-01 | CHARLES | BRAHLER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09272017 | Approved | THE TIMKEN COMPANY | Reports | Inpatient | Inpatient | 09222017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922047 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 09272017 | 09222017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09182017 | 2017-09-18T10:18:43+00:00 |  | 000083786-01 | Marie | Caldwell | MED STAFF SERVICES LLC | 907313 | CHARLES N | ONWE | 1831124460 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 09272017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 09182017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918099 | J181 | Lobar pneumonia, unspecified organism | ICD10 | 09272017 | 09182017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 09122017 | 2017-09-12T13:11:49+00:00 |  | 000049352-01 | BARBARA | SMITH | HMP OF FRANKLIN CTY LTD | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09112017 | 09222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914011 | J984 | Other disorders of lung | ICD10 | 09272017 | 09112017 | 09222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 09252017 | 2017-09-25T09:25:16+00:00 | 253848427266 | 000028286-01 | FLORA | KAPTEINA | COLON & RECTAL SURG INC | 934919 | CHARLES W | TAYLOR III | 1861492969 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09232017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925022 | K625 | Hemorrhage of anus and rectum | ICD10 | 09272017 | 09232017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09192017 | 2017-09-19T15:17:26+00:00 |  | 000087977-01 | Ann | Nicolaci | MERCY WEST HOSPITAL | 927002 |  | MERCY WEST HOSPITAL | 1912007931 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 09272017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 09192017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920032 | M84359S, S0990XA, S72012A | Unsp intracapsular fracture of left femur, init for clos fx | ICD10 | 09272017 | 09192017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09222017 | 2017-09-22T08:07:35+00:00 |  | 000079598-01 | James | Kreis | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09272017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 09212017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922010 | I471 | Supraventricular tachycardia | ICD10 | 09272017 | 09212017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08212017 | 2017-08-21T13:14:54+00:00 |  | 000013911-01 | TERRIA | LOWE | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09182017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821111 | M87051 | Idiopathic aseptic necrosis of right femur | ICD10 | 09272017 | 09182017 | 09212017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 08102017 | 2017-08-10T13:34:24+00:00 |  | 000101359-01 | RICKY | CRAIG | ONCOLOGY HEMATOLOGY CARE | 923344 | JAMES | ESSELL | 1265425078 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Transplant | IN TRPLNT | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 09272017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 09072017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810064 | C8338 | Diffuse large B-cell lymphoma, lymph nodes of multiple sites | ICD10 | 09272017 | 09072017 | 09262017 | 38241 | BONE MARROW TRANSPLANTATION; AUTOLOGOUS | CPT | 1 | 1 | Approved | 19 | CPT | C4 |  |  |  | 18.0 |
| 09122017 | 2017-09-12T10:30:50+00:00 | 258084347254 | 000026940-01 | ILENE | OFFENBURGER | EMERGENCY SERVICES INC | 922684 | JOSEPH D | BUSHEK | 1952559486 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09112017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912022 | C680 | Malignant neoplasm of urethra | ICD10 | 09272017 | 09112017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 09112017 | 2017-09-11T09:29:35+00:00 |  | 000118697-01 | Raymond | Erlenbach | LICKING MEM SURG SRVS | 904864 | VICTOR F | FERRINI | 1629018700 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 09272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09212017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911115 | D126 | Benign neoplasm of colon, unspecified | ICD10 | 09272017 | 09212017 | 09262017 | 44140 | COLECTOMY, PARTIAL, C ANASTOMOSIS | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 1.0 |
| 09152017 | 2017-09-15T10:09:47+00:00 |  | 000098486-01 | Perry | Swartz | CAMDEN CLARK PHYS CORPOR | 931289 | JUSTIN M | VARGHESE | 1003136367 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09272017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 09142017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915056 | E871, J189, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 09272017 | 09142017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09182017 | 2017-09-18T09:56:33+00:00 |  | 000099921-01 | Edith | Moore | SOUND PHYSICIANS OF OHI0 | 947866 | KALYN M | JOLIVETTE | 1447693239 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 09272017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 09162017 | 09242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918096 | A419, E871 | Hypo-osmolality and hyponatremia | ICD10 | 09272017 | 09162017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 09272017 | 2017-09-27T08:18:08+00:00 |  | 000030189-01 | JOHN | EDWARDS | COLON & RECTAL SURG INC | 934919 | CHARLES W | TAYLOR III | 1861492969 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09272017 | Approved | TRINITY HEALTH | Reports | EIS | Inpatient | 09262017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927001 | K644 | Residual hemorrhoidal skin tags | ICD10 | 09272017 | 09262017 | 09272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09222017 | 2017-09-22T10:11:39+00:00 |  | 000029485-01 | PHYLLIS | COLLIER | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 |  | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Inpatient | IP | Concurrent Review | CONC |  | MEMORIAL HOSPITAL OF UNION COUNTY | 09272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09212017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922032 | J441, R0902 | Hypoxemia | ICD10 | 09272017 | 09212017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09182017 | 2017-09-18T16:12:21+00:00 |  | 000029408-01 | BRUCE | STUMP | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09172017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919106 | D7289, J449, R092 | Respiratory arrest | ICD10 | 09272017 | 09172017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08142017 | 2017-08-14T10:29:02+00:00 |  | 000078623-01 | David | Blair | ALLIANCE PHYSICIANS INC | 902272 | KENNETH P | POHL | 1356312565 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09182017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814045 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 09272017 | 09182017 | 09202017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 09222017 | 2017-09-22T16:29:57+00:00 |  | 000108808-01 | Effie | Behm | INTERNAL MEDICINE OF CIN | 926760 | ANNA N | MAXEY | 1356410641 | MERCY ANDERSON REHABILIT | 950119 | 1245789981 | MERCY ANDERSON REHABILITATION UNIT | 1245789981 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MERCY ANDERSON REHABILITATION UNIT | 09272017 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Inpatient | 09272017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170925001 | R5381, R54, T8111XD | Postprocedural cardiogenic shock, subsequent encounter | ICD10 | 09272017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09182017 | 2017-09-18T15:08:22+00:00 |  | 000086191-01 | Elizabeth | Briggs | APOGEE MED GRP OHIO INC | 943746 | JAMES | BARRON | 1295776441 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09172017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919093 | S7292XA | Unsp fracture of left femur, init encntr for closed fracture | ICD10 | 09272017 | 09172017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09072017 | 2017-09-07T15:03:55+00:00 |  | 000107597-01 | Fannie | Lewis | HMP OF RICHLAND COUNTY L | 918510 | HARMANPREET S | SHINH | 1578729174 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 09272017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 09062017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908031 | J189, R0902, R441 | Visual hallucinations | ICD10 | 09272017 | 09062017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 09192017 | 2017-09-19T09:58:28+00:00 |  | 000022924-01 | RALPH | LOVE | OSU INTERNAL MED LLC | 941950 | KERRY A | ROGERS | 1659534246 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 09272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09182017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920013 | D641, D696, D72829 | Elevated white blood cell count, unspecified | ICD10 | 09272017 | 09182017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
