Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-13_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-13_URGEMERG
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
| 02012018 | 2018-02-01T12:38:53+00:00 |  | 000089912-01 | Gladys | Chittick | GRANDVIEW HOSPITAL & SOU | 912566 | JAN E | SAUNDERS | 1174525901 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 02122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01312018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201027 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 02122018 | 01312018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02062018 | 2018-02-06T13:14:39+00:00 |  | 000120567-01 | Irving | Thompson | KNOX COMMUNITY HOSP GRP | 913996 | LAURA B | MURNANE | 1578744124 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02052018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206067 | J189, R079 | Chest pain, unspecified | ICD10 | 02122018 | 02052018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02032018 | 2018-02-03T14:33:58+00:00 |  | 000032135-01 | JOSEPH | NEWLAND | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02022018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205015 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 02132018 | 02022018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 02042018 | 2018-02-04T16:34:31+00:00 |  | 000030358-01 | Joseph | Sullivan | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02132018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02032018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205034 | R4182 | Altered mental status, unspecified | ICD10 | 02132018 | 02032018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 02062018 | 2018-02-06T13:53:20+00:00 |  | 000051752-01 | JAMES | PHILLIPS | HOSPITALIST MEDICINE PHY | 948949 | KHAIRI | SHMINA | 1205275674 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02052018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206058 | N10, R109 | Unspecified abdominal pain | ICD10 | 02132018 | 02052018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01302018 | 2018-01-30T08:44:53+00:00 |  | 000086671-01 | Jimmie | Mcgee | MERCY HEALTH PHYSICIANS | 927835 | BRET A | FERREE | 1548601461 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 02132018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 02072018 | 02112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130047 | M5104 | Intervertebral disc disorders w myelopathy, thoracic region | ICD10 | 02132018 | 02072018 | 02112018 | 22610, 22614, 22842, 20936, 63055, 63057 | TRNSPDCLR AP;DCMP CD/NRV RT,@ ADDTL | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 5, 5, 5, 5, 5, 5 | CPT | C4 |  |  |  | 2.0 |
| 01312018 | 2018-01-31T14:45:20+00:00 |  | 000038632-01 | RONALD | NELSON | MOUNT CARMEL HLTH SYS | 927568 | KARTHIK S | MULKANOOR | 1720390859 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01302018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131089 | E11628 | Type 2 diabetes mellitus with other skin complications | ICD10 | 02132018 | 01302018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 02032018 | 2018-02-03T16:33:34+00:00 |  | 000110853-01 | John | Hartig Jr | SOUND INPATIENT PHYS OF | 914484 | KANAN AKHIL | PATEL | 1205096195 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02132018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 02022018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205022 | I629 | Nontraumatic intracranial hemorrhage, unspecified | ICD10 | 02132018 | 02022018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 02052018 | 2018-02-05T08:07:51+00:00 |  | 000121674-01 | David | Mcallister | HOSPITALIST MEDICINE PHY | 926861 | MOTAZ | HOSSEIN | 1922377977 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Inpatient | IP | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 02132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02042018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205053 | R197 | Diarrhea, unspecified | ICD10 | 02132018 | 02042018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02062018 | 2018-02-06T08:59:18+00:00 |  | 000009402-01 | Jack | Hayner | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02052018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206020 | M6281, R7881 | Bacteremia | ICD10 | 02132018 | 02052018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02072018 | 2018-02-07T15:24:56+00:00 |  | 000019053-01 | MARGARET | PORT | DOCTORS HOSPITAL | 903408 |  | DOCTORS HOSPITAL | 1972535052 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 02132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02072018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207070 | R0902 | Hypoxemia | ICD10 | 02132018 | 02072018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02072018 | 2018-02-07T16:02:08+00:00 |  | 000075822-01 | Terry | Anderson | HOSPITALIST MEDICINE PHY | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02132018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 02062018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208007 | M549 | Dorsalgia, unspecified | ICD10 | 02132018 | 02062018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02082018 | 2018-02-08T09:15:31+00:00 |  | 000072620-01 | BRENDA | CURRY | ORTHOPEDIC ONE INC | 914385 | JOHN A | JOHANSEN | 1205087277 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02132018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02082018 | 02122018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208014 | S42241A | 4-part fracture of surgical neck of right humerus, init | ICD10 | 02132018 | 02082018 | 02122018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 02082018 | 2018-02-08T09:36:29+00:00 |  | 000037749-01 | CAROLYN | DAVIS | RIVERSIDE METHODIST HSP | 936400 |  | RIVERSIDE METHODIST HOSPITAL | 1467484972 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 02132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02072018 | 02112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208046 | R0602 | Shortness of breath | ICD10 | 02132018 | 02072018 | 02112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02092018 | 2018-02-09T10:02:37+00:00 |  | 000037519-01 | MARGARET | WOOLUM | RIVERSIDE SURG ASSOC INC | 944083 | BRENT J | GOSLIN | 1073741195 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 02132018 | Approved | MediGold Classic Preferred | Fax | Secondary Only | Inpatient | 02082018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209025 | R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 02132018 | 02082018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02092018 | 2018-02-09T10:05:08+00:00 |  | 000036837-01 | BARBARA | CHAPMAN | OHIOHEALTH PHYS GRP | 932197 | MICHELLE Y | KINCAID | 1396943601 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02082018 | 02112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209044 | M542 | Cervicalgia | ICD10 | 02132018 | 02082018 | 02112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02102018 | 2018-02-10T12:16:14+00:00 |  | 000006113-01 | DAVID | LAY | V GEORGE ZOCHOWSKI DO IN | 938553 |  | V GEORGE ZOCHOWSKI DO INC | 1003912403 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02092018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212017 | I472 | Ventricular tachycardia | ICD10 | 02132018 | 02092018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01292018 | 2018-01-29T15:56:08+00:00 |  | 000101861-01 | Leonard | Golde | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 02132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01312018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129129 | J439, R561 | Post traumatic seizures | ICD10 | 02132018 | 01312018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02012018 | 2018-02-01T08:35:06+00:00 |  | 000070769-01 | Harry | Cotton | FAIRFIELD INTERNAL MED | 937245 | CHRISTOPHER S | NICKISON | 1962481465 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01312018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201018 | I200 | Unstable angina | ICD10 | 02132018 | 01312018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 02012018 | 2018-02-01T14:41:22+00:00 |  | 000064873-01 | DEBRA | DEBOLT- REYNOLDS | FAIRFIELD HLTHCARE PROFS | 941890 | MUSSARET | ZUBERI | 1639123409 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01312018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201052 | K639, R109 | Unspecified abdominal pain | ICD10 | 02132018 | 01312018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 02022018 | 2018-02-02T08:23:48+00:00 |  | 000105094-01 | JOHN | EMERY JR | S DAYTON ACUTE CARE CNSL | 947057 | ELLEN S | KIM | 1912249400 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 02132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02012018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202015 | N289 | Disorder of kidney and ureter, unspecified | ICD10 | 02132018 | 02012018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02062018 | 2018-02-06T07:51:24+00:00 |  | 000038090-01 | RITA | SHONK | FAIRFIELD HLTHCARE PROFS | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02132018 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 02042018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206023 | J9601, N390 | Urinary tract infection, site not specified | ICD10 | 02132018 | 02042018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02062018 | 2018-02-06T14:22:13+00:00 |  | 000050128-01 | PAUL | HUNCKLER | FAIRFIELD HLTHCARE PROFS | 943106 | AMANDA L | SLATER | 1770844367 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02052018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206068 | J449, R092, R112 | Nausea with vomiting, unspecified | ICD10 | 02132018 | 02052018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02062018 | 2018-02-06T15:09:44+00:00 |  | 000090684-01 | Richard | Brewer | HOSPITALIST MEDICINE PHY | 925203 | ASAD S | ALI | 1053386938 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 02132018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 02062018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207025 | R079, R748 | Abnormal levels of other serum enzymes | ICD10 | 02132018 | 02062018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02072018 | 2018-02-07T13:52:56+00:00 |  | 000084310-01 | Larry | Gallagher | FAIRFIELD HLTHCARE PROFS | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02132018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 02062018 | 02112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207061 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 02132018 | 02062018 | 02112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02082018 | 2018-02-08T12:02:50+00:00 |  | 000093340-01 | Terry | Lowery | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02132018 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 02082018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208050 | R079 | Chest pain, unspecified | ICD10 | 02132018 | 02082018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02082018 | 2018-02-08T10:56:45+00:00 |  | 000105805-01 | Emma | Hunt | LICKING MEM INPATIENT ME | 936224 | KHANH V | DANG | 1922007111 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02072018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208059 | I214, I4891 | Unspecified atrial fibrillation | ICD10 | 02132018 | 02072018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02092018 | 2018-02-09T14:26:59+00:00 |  | 000084517-01 | Pearl | Nelson | COLS INPATIENT CARE INC | 948518 | LUIZA | BALABANYAN | 1174866404 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 02082018 | 02122018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209072 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02132018 | 02082018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02112018 | 2018-02-11T09:01:31+00:00 |  | 000021598-01 | NANCY | WYCOFF | HOSPITALIST MEDICINE PHY | 943369 | SAMVEL | NERSISYAN | 1184982357 | GRADY MEMORIAL HOSPITAL | 936495 | 1235174327 | GRADY MEMORIAL HOSPITAL | 1235174327 | Inpatient | IP | Concurrent Review | CONC |  | GRADY MEMORIAL HOSPITAL | 02132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02092018 | 02112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212019 | L03012 | Cellulitis of left finger | ICD10 | 02132018 | 02092018 | 02112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02112018 | 2018-02-11T09:10:20+00:00 |  | 000106139-01 | Donald Frank | Perkins | SOUND INPATIENT PHYS OF | 928116 | ONMA A | AMEH | 1578884565 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 02132018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02092018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212023 | I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 02132018 | 02092018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02112018 | 2018-02-11T09:19:22+00:00 |  | 000037395-01 | NORMA | HALL | OHIOHEALTH PHYS GRP | 927691 | ROSE | TRESS | 1184944373 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02102018 | 02112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212038 | N390 | Urinary tract infection, site not specified | ICD10 | 02132018 | 02102018 | 02112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02112018 | 2018-02-11T12:46:26+00:00 |  | 000034055-01 | PAUL | KRAUSS | COLS INPATIENT CARE INC | 932326 | CALEB T | WAGNER | 1124310826 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02102018 | 02112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212049 | J159, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 02132018 | 02102018 | 02112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02112018 | 2018-02-11T15:06:42+00:00 |  | 000094683-01 | James | Brandt | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02132018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02102018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212058 | I639 | Cerebral infarction, unspecified | ICD10 | 02132018 | 02102018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02122018 | 2018-02-12T15:14:07+00:00 |  | 000062875-01 | DONNA | KEATON | OSU INTERNAL MED LLC | 930397 | ERIC J | ADKINS | 1528046232 | LABONE OF OHIO INC | 936446 | 1134165970 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 02132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02092018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213015 | I629 | Nontraumatic intracranial hemorrhage, unspecified | ICD10 | 02132018 | 02092018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02052018 | 2018-02-05T15:55:05+00:00 |  | 000079125-01 | Gary | Jackson | FAIRFIELD HLTHCARE PROFS | 943186 | MAJIDA B | GIANCOLA | 1457612061 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02032018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206007 | E876, N390, R1030, R531 | Weakness | ICD10 | 02132018 | 02032018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02062018 | 2018-02-06T10:48:23+00:00 |  | 000023471-01 | FRANK | KYNKOR | MOUNT CARMEL HLTH SYS | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02052018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206047 | I509, R4182 | Altered mental status, unspecified | ICD10 | 02132018 | 02052018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02072018 | 2018-02-07T12:06:52+00:00 |  | 000050487-01 | SANFORD | LOVELY | TOLANI, OLUGBENGA F | 901443 | OLUGBENGA F | TOLANI | 1255439675 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02062018 | 02122018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207040 | I509 | Heart failure, unspecified | ICD10 | 02132018 | 02062018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02082018 | 2018-02-08T10:13:51+00:00 |  | 000071175-01 | Donald | Ward | DENISON MEDICAL GROUP LL | 940020 | ALI R | IMANI | 1285921858 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 02132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02082018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208048 | R0602 | Shortness of breath | ICD10 | 02132018 | 02082018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02092018 | 2018-02-09T10:12:42+00:00 |  | 000029961-01 | Richard | Hammond | MOUNT CARMEL HLTH SYS | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02132018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02082018 | 02122018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209029 | I4891, I4892 | Unspecified atrial flutter | ICD10 | 02132018 | 02082018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02122018 | 2018-02-12T10:36:17+00:00 |  | 000106123-01 | SAMUEL | RIEL | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 02132018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 02092018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212051 | R4189 | Oth symptoms and signs w cognitive functions and awareness | ICD10 | 02132018 | 02092018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02122018 | 2018-02-12T08:19:59+00:00 |  | 000003061-01 | Stanley | Hockenberry | LICKING MEM HLTH PROF | 936224 | KHANH V | DANG | 1922007111 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02132018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02092018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212052 | I4891 | Unspecified atrial fibrillation | ICD10 | 02132018 | 02092018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02122018 | 2018-02-12T12:09:36+00:00 |  | 000057988-01 | Lester | Love | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02132018 | Approved | MediGold Essential Care | Fax | ACO - Cardiology | Inpatient | 02082018 | 02102018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212091 | I200 | Unstable angina | ICD10 | 02132018 | 02082018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02122018 | 2018-02-12T12:43:14+00:00 |  | 000108051-01 | Ruth | Enlow | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02092018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212095 | K654, K859, R740 | Nonspec elev of levels of transamns & lactic acid dehydrgnse | ICD10 | 02132018 | 02092018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02122018 | 2018-02-12T13:48:37+00:00 |  | 000119029-01 | WILLIAM | SMITH | MOUNT CARMEL HLTH SYS | 925995 | JEFFREY R | BACKES | 1457689101 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02132018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 02112018 | 02122018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212102 | T8454XA | Infect/inflm reaction due to internal left knee prosth, init | ICD10 | 02132018 | 02112018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
