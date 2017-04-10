Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-04-09_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-04-09_URGEMERG
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
	And in the "Certification" page I use the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Hospital Svcs"
	And the test pauses for "3" seconds
	And in the "hospital_services" page I should see the "est_admit" image
	And the test pauses for "3" seconds
	#And in the "hospital_services" page I enter "<care_date>" into the "est_admit" image
	And in the "hospital_services" page I enter the first element from "<care_date>" into the "est_admit" image
	And in the "hospital_services" page I subtract one from the "<auth_approval_days>" days and put the result in the "auth_days" image
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
	And in the "hospital_services" page I click on the "save" image
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "5" seconds

	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And in the "authorized_services" page I should see the "amounts_and_dates" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I convert "<care_date>" into the "dates_begin_requested" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I add the "<auth_approval_days>" to the "<care_date>" and put the result in the "dates_end_requested" image and subtract one
	And the test pauses for "2" seconds
	And in the "authorized_services" page I add the "<auth_approval_days>" to the "<care_date>" and put the result in the "dates_end_approved" image and subtract one
	And the test pauses for "2" seconds
	#And in the "authorized_services" page I enter "<care_date>" into the "dates_begin_approved" image
	And in the "authorized_services" page I enter the first element from "<care_date>" into the "dates_begin_approved" image
	And the test pauses for "2" seconds
	#And in the "authorized_services" page I enter "<auth_approval_days>" into the "how_many_requested" image
	And in the "authorized_services" page I enter the first element from "<auth_approval_days>" into the "how_many_requested" image
	And the test pauses for "2" seconds
	#And in the "authorized_services" page I enter "<auth_approval_days>" into the "how_many_authorized" image
	And in the "authorized_services" page I enter the first element from "<auth_approval_days>" into the "how_many_authorized" image
	And the test pauses for "3" seconds
	And I use the sub class "<sub_class>" to determine what location to enter into the location image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "AD" into the "count" image

	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds

	And I press "F8"
	And the test pauses for "5" seconds
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
		| requested_date  | military_date      | other_reference_# |	member_id | member_first_name |	member_last_name | practice_name | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name  | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	| servicing_provider_npi_# |	sub_class  | sub_class_code | type  |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm | auth_for_payment | days_used_prior | dc | denc_date | mds_date | nomnc_date | total_days | total_skilled_days | auth_type      | auth_status    |	auth_number |	diagnosis_code     |	diagnosis                                          			|	diagnosis_type |	auth_modified_date | service_code       | service_description                                                    | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                  | care_date | actual_level_of_care | approved_level_of_care | determination | auth_approval_days |
| 03072017 | 2017-03-07T09:31:07+00:00 |  | 000024894-01 | RICHARD | STEBELTON | OSU SURGERY LLC | 912283 | JUAN A | CRESTANELLO | 1477505048 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 04072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03312017 | 04052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170309064 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 04072017 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 6 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved., Received notification of expedited appeal. Case was discussed with Dr. Greg Wise and approved for the member to seek treatment at OSU for possible TAVR., TAVR performed as prior authorized. No reported post operative complications. | 03312017, 04012017, 04022017, 04032017, 04042017, 04052017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved,  | 6, 6, 6, 6, 6, 6 |
| 03102017 | 2017-03-10T12:52:19+00:00 |  | 000069287-01 | HOWARD | HEIMLICH | ORTHOPEDIC ONE INC | 903221 | BRIAN L | DAVISON | 1891778304 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04052017 | 04062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170310041 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 04072017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 | Clinical documentation reviewed in PowerChart | 04052017, 04062017 | Inpatient, Inpatient | Inpatient, Inpatient | Approved,  | 2, 2 |
| 03162017 | 2017-03-16T08:18:53+00:00 |  | 000093886-01 | Joyce | Egnot | MARIETTA HLTH CARE PHYS | 921885 | RAJENDRA S | BHATI | 1164641759 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 04072017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 03312017 | 04062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170316023 | C20 | Malignant neoplasm of rectum | ICD10 | 04072017 | 45395, 45110, 47399, 47382, 47383, 76705, 76998 | ULTRASONIC GUIDANCE INTRAOPERATIVE | CPT | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 7, 7, 7, 7, 7, 7, 7 | CPT | C4 | Elective admission for resection w/ partial vaginectomy and take-down of colostomy.  H/o Stage IV rectal cancer and had complete response to treatment.  However  PET scan showed lesion on R vaginal vault consistent w/ metastatic CA.  Thus admits for elective partial vaginectomy. | 03312017, 04012017, 04022017, 04032017, 04042017, 04052017, 04062017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved,  | 7, 7, 7, 7, 7, 7, 7 |
| 03272017 | 2017-03-27T14:54:00+00:00 |  | 000071538-01 | Geraldine | Ritchie | SOUND INPATIENT PHYS OF | 927302 | ABIDEMI B | AKANDE | 1518281690 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03242017 | 04032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170327187 | R001 | Bradycardia, unspecified | ICD10 | 04072017 |  |  |  | 0 | 0 |  | 0 |  |  | Presented with symptomatic bradycardia. Was scheduled to have her battery replaced in her pacemaker in April., Remains in house on Hep Gtt.  INR 1.3.  Needs pacer replacement but needs INR 2.5 prior to procedure.  Recommending Cardiac Cath but mbr refuses at this point. | 03242017, 03252017, 03262017, 03272017, 03282017, 03292017, 03302017, 03312017, 04012017, 04022017, 04032017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11 |
| 03282017 | 2017-03-28T08:08:40+00:00 |  | 000034799-01 | MARGARET | HOLT | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04052017 | 04062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170328002 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 04072017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 | Clinical documentation reviewed in PowerChart | 04052017, 04062017 | Inpatient, Inpatient | Inpatient, Inpatient | Approved,  | 2, 2 |
| 03292017 | 2017-03-29T10:13:25+00:00 | 026021900-7066 | 000113855-01 | Karen | Davie | ORTHOPEDIC ONE INC | 936932 | CHRISTOPHER | HOLZAEPFEL | 1770695199 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04052017 | 04062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170329031 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 04072017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 | Clinical documentation reviewed in PowerChart | 04052017, 04062017 | Inpatient, Inpatient | Inpatient, Inpatient | Approved,  | 2, 2 |
| 03302017 | 2017-03-30T10:07:01+00:00 | 253998657088 | 000042850-01 | JOSEPH | KEARNEY | CEN OH PRIMARY CARE PHYS | 916233 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04072017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 03292017 | 04062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170330006 | M62262 | Nontraumatic ischemic infarction of muscle, left lower leg | ICD10 | 04072017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03292017, 03302017, 03312017, 04012017, 04022017, 04032017, 04042017, 04052017, 04062017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 9, 9, 9, 9, 9, 9, 9, 9, 9 |
| 03302017 | 2017-03-30T11:57:05+00:00 |  | 000056521-01 | JAMES | ANDERSON | COMMUNITY HSPIST LLC | 943186 | MAJIDA B | GIANCOLA | 1457612061 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03292017 | 04042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170330044 | J111, M6281 | Muscle weakness (generalized) | ICD10 | 04072017 |  |  |  | 0 | 0 |  | 0 |  |  | Presented with SOB and weakness. Troponins Elevated trending down w peak of 0.131. EKG with NSR w/o ST changes. Blood cx positive for Gm +., Plan for LHC.  Hep gtt. Supplemental O2. | 03292017, 03302017, 03312017, 04012017, 04022017, 04032017, 04042017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved,  | 7, 7, 7, 7, 7, 7, 7 |
| 03312017 | 2017-03-31T09:51:36+00:00 | 264635557088 | 000035024-01 | DAVID | CUMMINGS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04072017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 03302017 | 04062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170331007 | Z992 | Dependence on renal dialysis | ICD10 | 04072017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03302017, 03312017, 04012017, 04022017, 04032017, 04042017, 04052017, 04062017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 8, 8, 8, 8, 8, 8, 8, 8 |
| 03302017 | 2017-03-30T17:18:00+00:00 |  | 000026612-01 | NORMA | MILLER | RIVERSIDE TRAUMA SURGEON | 920504 | JOHN A | BACH | 1891990859 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 04072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03292017 | 04042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170331057 | T45511A | Poisoning by anticoagulants, accidental, init | ICD10 | 04072017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03292017, 03302017, 03312017, 04012017, 04022017, 04032017, 04042017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved,  | 7, 7, 7, 7, 7, 7, 7 |
| 03302017 | 2017-03-30T12:05:52+00:00 |  | 000111520-01 | Eugene | Ramey | OSU SURGERY LLC | 926073 | SYLVESTER M | BLACK | 1235166653 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 04072017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 03292017 | 04042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170331070 | B349 | Viral infection, unspecified | ICD10 | 04072017 |  |  |  | 0 | 0 |  | 0 |  |  | Recent admit w CMV viremia. Presented with worsening SOB  CP and edema. Hyperkalemia  Leukopenia. PICC line in place.  Tx with supplemental O2  IV Lasix, Fax Failed. Resent. | 03292017, 03302017, 03312017, 04012017, 04022017, 04032017, 04042017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved,  | 7, 7, 7, 7, 7, 7, 7 |
| 03312017 | 2017-03-31T15:43:24+00:00 | 026070185-7091 | 000006439-01 | MARGUERITE | WESTERFIELD | MOUNT CARMEL HOSPICE | 931062 | RAJIV | VERMA | 1811922511 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04072017 | Approved | MediGold Classic Preferred | EMR | Secondary Only | Inpatient | 03312017 | 04062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170331071 | R627 | Adult failure to thrive | ICD10 | 04072017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, HOSPICE ADMIT - MediGold pay as secondary only, HOSPICE ADMIT - MediGold pay as secondary only, Notified per mt carmel discharge vista report dated 04/07/17 that pt EXPIRED while in Inpatient HOSPICE on 04/06/17 at 19:50.  MediGold Pay as secondary only | 03312017, 04012017, 04022017, 04032017, 04042017, 04052017, 04062017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved,  | 7, 7, 7, 7, 7, 7, 7 |
| 04032017 | 2017-04-03T10:12:01+00:00 | 250345777091 | 000048439-01 | CARMINA | ERAMO | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04072017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 03312017 | 04062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170403005 | A419, I509, J159 | Unspecified bacterial pneumonia | ICD10 | 04072017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03312017, 04012017, 04022017, 04032017, 04042017, 04052017, 04062017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved,  | 7, 7, 7, 7, 7, 7, 7 |
| 04032017 | 2017-04-03T11:18:04+00:00 | 256967757090 | 000089529-01 | Lynne-Reed | Carter | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04072017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 03312017 | 04062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170403054 | 7241 | PAIN IN THORACIC SPINE | ICD9 | 04072017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03312017, 04012017, 04022017, 04032017, 04042017, 04052017, 04062017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved,  | 7, 7, 7, 7, 7, 7, 7 |
| 03302017 | 2017-03-30T17:03:06+00:00 |  | 000082788-01 | Doris | Gruebel | COPC CENTRAL OHIO PRIMAR | 924517 | JULIE A | COLELLA | 1396073292 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 04072017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03292017 | 04012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170403060 | I639 | Cerebral infarction, unspecified | ICD10 | 04072017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03292017, 03302017, 03312017, 04012017 | Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 03312017 | 2017-03-31T11:16:27+00:00 |  | 000116500-01 | Alden | Schneider | INTL MED & GERATRICS CAR | 921436 | KETAN K | PATEL | 1699721050 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 04072017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 03302017 | 04022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170403068 | R001 | Bradycardia, unspecified | ICD10 | 04072017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03302017, 03312017, 04012017, 04022017 | Observation, Observation, Observation, Observation | Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 04042017 | 2017-04-04T09:38:33+00:00 | 250482037092 | 000020668-01 | DAVID | HOUSER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04072017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 04032017 | 04062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170404010 | N390 | Urinary tract infection, site not specified | ICD10 | 04072017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 04032017, 04042017, 04052017, 04062017 | Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 04012017 | 2017-04-01T11:57:10+00:00 |  | 000027081-01 | CARMELLA | ALBERTS | COPC CENTRAL OHIO PRIMAR | 910704 | JENNIFER A | STURGILL | 1386803328 | OHIOHEALTH CORPORATION | 905908 | 1578545273 | DUBLIN METHODIST HOSPITAL | 1801937008 | Inpatient | IP | Concurrent Review | CONC |  | DUBLIN METHODIST HOSPITAL | 04072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03302017 | 04022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170404121 | D61818, L03116 | Cellulitis of left lower limb | ICD10 | 04072017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03302017, 03312017, 04012017, 04022017 | Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 04032017 | 2017-04-03T15:06:05+00:00 |  | 000071228-01 | Alma | White | OSU INTERNAL MED LLC | 929232 | SCOTT M | LILLY | 1932263274 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 04072017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03312017 | 04042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170404126 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 04072017 |  |  |  | 0 | 0 |  | 0 |  |  | TX from OSH with NSTEMI | 03312017, 04012017, 04022017, 04032017, 04042017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved,  | 5, 5, 5, 5, 5 |
| 04052017 | 2017-04-05T09:32:10+00:00 | 250586217094 | 000081546-01 | James | Johnson | AMERICAN HLTH NETWORK OF | 936930 | PATRICIA F | HOLLINGSWORTH | 1730117276 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04072017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 04042017 | 04062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170405005 | R6521 | Severe sepsis with septic shock | ICD10 | 04072017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 04042017, 04052017, 04062017 | Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient | Approved, Approved,  | 3, 3, 3 |
| 04052017 | 2017-04-05T09:43:46+00:00 | 250401407094 | 000017240-01 | THOMAS | GAUS | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04072017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 04042017 | 04062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170405008 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 04072017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 04042017, 04052017, 04062017 | Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient | Approved, Approved,  | 3, 3, 3 |
| 04052017 | 2017-04-05T11:55:51+00:00 | 258629007087 | 000079738-01 | Ronald | Cunningham | CEN OH NEURO SURGEONS IN | 909312 | PHILLIP | IMMESOETE | 1609089317 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04072017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 04042017 | 04062017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170407028 | M5126 | Other intervertebral disc displacement, lumbar region | ICD10 | 04072017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, MEETS EIS - Y   $6 500.00, MEETS EIS - Y   $6 500.00 | 04042017, 04052017, 04062017 | Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient | Approved, Approved,  | 3, 3, 3 |
| 04052017 | 2017-04-05T09:25:35+00:00 |  | 000053155-01 | RICHARD | KEVAN | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 04072017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 04072017 | 04082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Pre-Service | Denied | A170405013 | I639 | Cerebral infarction, unspecified | ICD10 | 04072017 |  |  |  | 0 | 0 |  | 0 |  |  | 85 year old male presented to the ED with for evaluation of sudden onset of aphasia and right sided weakness.  The mbr has a PMH of CAD  Atrial Fib  CLL  CKD and TIA. On arrival to ED the mbr was back to baseline and was able to give history. Ct of the head did not show a new stroke  but did show the old one.  The mbr was dx with Aphasia.  PLOF the mbr  is modified  independent with ADL's with use of a cane   the mbr continues to drive.  Currently he is CGA to Min with ADL's .   SBA with Wheeled walker and Supine-Sit.  , , Request taken to Medical Director and denied per, do not require full-time access to a doctor with training in rehabilitation (at least three visits per week), do not require full-time access to a skilled rehabilitation nurse, The care needed could be provided through other covered benefits in a different setting to provide a comparable level of care., Received call ed from Polly with MCW Rehab   informed her that the medical director denied IPRH  Pollly wanted to know how to appeal decision I informed her that the process would be listed on the denial letter  she voiced understanding., 04/07/17 at 15:45 TCT Lisa G. Case management at MCW to inform of the upheld denial.  TCT Polly at MC Acute Inpatient Rehab 614 519 1159 to inform that the denial had be upheld after the Peer to Peer. |  |  |  |  | 0 |
| 03022017 | 2017-03-02T15:37:11+00:00 |  | 000084273-01 | Mary | Bohlander | THE OH STATE UNIVERSITY HSP REHAB | 936564 |  | THE OH STATE UNIVERSITY HSP REHAB | 1184723637 | THE OH STATE UNIVERSITY HSP REHAB | 936564 | 1184723637 | THE OH STATE UNIVERSITY HSP REHAB | 1184723637 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HSP REHAB | 04072017 | Reopen Denied | MediGold Classic Preferred | Fax | Not Medically Necessary | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Pre-Service | Reopen Denied | A170302091 | C50919, C7951, G9520 | Unspecified cord compression | ICD10 | 04072017 |  |  |  | 0 | 0 |  | 0 |  |  | Call to Ashley at Dodd. Requesting OT notes and additional clinical notes., Additional notes received and reviewed.  Physician rev submitted to the Medical Director for determination., The Medical Director denied request for IPRH as services could be performed in a alternate setting at comparable care., Call to Ashley at Dodd. Informed of decision. She said they may request a Peer to Peer. Provided number to call if Peer to Peer is requested., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04052017 | 2017-04-05T15:29:23+00:00 |  | 000115915-01 | VALLA | ODELL | THE OH STATE UNIVERSITY | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 04072017 | Reopen Denied | MediGold Essential Care | Fax | Not Medically Necessary | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Pre-Service | Reopen Denied | A170405059 | J189, J9601, R569 | Unspecified convulsions | ICD10 | 04072017 |  |  |  | 0 | 0 |  | 0 |  |  | Dx of Encephalopathy.  ST recommends 1:1 with feeding d/t previous aspiration event.  Recommends 24 hour supervision d/t decreased ability to manage her affairs.  PT/OT- requires 24 hour supervision and max assist  with ADLS. Min assist with mobility and transfers.  PLOF was independent. Submitted to the Medical Director for determination., The Medical Director denied the IPRH request., Call to Becky at Dodd. Informed of denial., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
